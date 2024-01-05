# app/controllers/students_controller.rb
class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to @student, notice: 'Student was successfully created.'
    else
      render :new
    end
  end

  def show
    @student = Student.find(params[:id])
    @subjects = Subject.all
  end

  private

  def student_params
    params.require(:student).permit(:name, :email, :password)
  end
end
