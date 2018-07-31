class StudentsController < ApplicationController

  def new
  end

  def create
    @student = Student.new(name:)
end
