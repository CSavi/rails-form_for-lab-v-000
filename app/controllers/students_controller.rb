class StudentsController < ApplicationController

  def new
  end

  def create
    @student = Student.new(first_name: params[:first_name], last_name: params[:last_name])
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

  def post_params(*args)
    params.require
end
