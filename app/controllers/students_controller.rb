class StudentsController < ApplicationController
  def index
    @students = Student.all
  end
  def show
    @product = Student.find(params[:id])
  end

  def new
    @students = Student.new
  end

  def create
    @students = Student.new(student_params)
      if @students.save
        redirect_to students_path
      else
        render :new
      end
  end
end
