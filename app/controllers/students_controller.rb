class StudentsController < ApplicationController

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(post_params)
    @student.save
    redirect_to student_path
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(paraks[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student = Student.update(post_params)
    redirect_to student_path
  end

  private

  def post_params
    params.require(:student)
  end
end
