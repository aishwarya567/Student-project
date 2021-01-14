class SubjectsController < ApplicationController
    before_action :set_semester
  
    def set_semester
      @semester = Semester.find(params[:semester_id])
    end
  
    def index
    end
  
    def create
      # @semester = Semester.find(params[:semester_id])
      @subject = @semester.subjects.create(subject_params)
      redirect_to semester_path(@semester)
    end
  
    def show
    end
  
    def new
    end
  
    def destroy
      # @semester = Semester.find(params[:semester_id])
      @subject = @semester.subjects.find(params[:id])
      @subject.destroy
      redirect_to semester_path(@semester)
    end
  
    def edit
      @subject = @semester.subjects.find(params[:id])
    end
  
    def update
      @subject = @semester.subjects.find(params[:id])
      if @subject.update_attributes(subject_params)
        redirect_to semester_path(@semester)
      else
        redirect_to "/home/index"
      end 
    end
  
    private
  
    def subject_params
      params.require(:subject).permit(:subject_code,:name)
    end
  
  
  end
  