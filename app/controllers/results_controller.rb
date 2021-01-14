class ResultsController < ApplicationController
	before_action :set_student
	def set_student
    @student_detail = StudentDetail.find(params[:student_detail_id])
  end
	def new
		@student_detail_id = params[:student_detail_id]
		@semeters = Semester.all.order(:sem_id)
		@subjects = []
		if params[:sem_id].present?
			@subjects = Semester.find(params[:sem_id]).subjects
			Rails.logger.debug "#{@subjects.count}"
		end
		# render json: {}, status: :ok
	end

	def create
		subj_id, status = validate_subject_code params[:sub_id]
		if status
			@result = @student_detail.results.create(result_params)
			redirect_to student_detail_path(@student_detail)
		else
			# render json: {error: "invalid subject code"}, status: :unprocessable_entity	
			flash[:message] = 'Invalid Subject Code'
			redirect_to student_detail_path(@student_detail)
		end
	end

	def edit
		@student_detail_id = params[:student_detail_id]
		@semeters = Semester.all.order(:sem_id)
		@result = @student_detail.results.find(params[:id])
	end

	def destroy
		@result = @student_detail.results.find(params[:id])
		@result.destroy
		redirect_to student_detail_path(@student_detail)
	end

	def update
		@result = @student_detail.results.find(params[:id])
		subj_id, status = validate_subject_code params[:sub_id]
		if status
			@result.update_attributes(result_params)
			redirect_to student_detail_path(@student_detail)
		else
			# render json: {error: "invalid subject code"}, status: :unprocessable_entity	
			flash[:message] = 'Invalid Subject Code'
			redirect_to student_detail_path(@student_detail)
		end
	end

	def validate_subject_code sub_id
		subj_id = Subject.find_by(subject_code:sub_id)
		if subj_id.present?
			return subj_id.id, true
		else
			return '',false
		end
	end

	private

  def result_params
    params.permit(:sem_id,:sub_id, :mark, :student_detail_id)
  end
end
