class StudentsController < ApplicationController

  def new
  end

  def create
    @student = Student.new(first_name: params[:first_name], last_name: params[:last_name])
    @student.save
    re
end
