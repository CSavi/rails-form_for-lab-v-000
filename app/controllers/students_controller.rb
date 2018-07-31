class StudentsController < ApplicationController

  def new
  end

  def create
    @student = Student.new(student_params)
    @student.save
    redirect_to student_path(@student)
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(paraks[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student = Student.update(params[:student])
    redirect_to student_path(@student)
  end

  private

  def student_params(*args)
    params.require(:student).permit(*args)
  end
end
