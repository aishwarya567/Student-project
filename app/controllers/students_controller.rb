class StudentsController < ApplicationController
  def /
    @students = Student.all
  end
  def index
    @students = Student.all
  end
  def show
    @students = Student.find(params[:id])
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
  def edit
    @students = Student.find(params[:id])
  end

  def update
    @students =Student.find(params[:id])
      if @students.update(student_params)
        redirect_to students_path
      else
        render :edit
      end
    end
    def destroy
      @students = Student.find(params[:id]).destroy
      redirect_to students_path
    end
  def student_params
    params.require(:student).permit(:name,:age,:address,:percentage)
  end
end
