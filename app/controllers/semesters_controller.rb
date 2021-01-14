class SemestersController < ApplicationController
	
	def new
		@semester = Semester.new
		respond_to do |format|
	    format.html  # new.html.erb
	    format.json  { render :json => @semester }
  	end
	end

	def index
		@semesters = Semester.all.order(sem_id: :asc)
 
	  respond_to do |format|
	    format.html  # index.html.erb
	    format.json  { render :json => @semesters }
	  end
	end

	def create
		# semester = params[:semester]
		@semester = Semester.new(semester_params)
		respond_to do |format|
			if @semester.save
				format.html { redirect_to(@semester, notice: 'Semester Created Sucessfully')}
				format.json { render json: @semester, status: :created, location: @semester }
			else
				format.html  { render :action => "new" }
      	format.json  { render :json => @semester.errors,:status => :unprocessable_entity }
      end
		end
	end

	def show
		@semester = Semester.find(params[:id])
		respond_to do |format|
			format.html #show.html.erb
			format.json {render json: @semester}
		end
	end

	def edit
		@semester = Semester.find(params[:id])
	end

	def update
	  @semester = Semester.find(params[:id])
	  respond_to do |format|
	    if @semester.update_attributes(semester_params)
	      format.html  { redirect_to(@semester,:notice => 'Semester was successfully updated.') }
	      format.json  { head :no_content }
	    else
	      format.html  { render :action => "edit" }
	      format.json  { render :json => @semester.errors,:status => :unprocessable_entity }
	    end
	  end
	end

	def destroy
	  @semester = Semester.find(params[:id])
	  @semester.destroy
	 
	  respond_to do |format|
	    format.html { redirect_to semesters_url }
	    format.json { head :no_content }
	  end
	end
	private

	def semester_params
		params.require(:semester).permit(:sem_id,:name)
	end

end
