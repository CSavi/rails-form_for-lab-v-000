class SchoolClassesController < ApplicationController

  def new
  end

  def create
    @school_class = Student.new(first_name: params[:first_name], last_name: params[:last_name])
    @school_class.save
    redirect_to student_path(@school_class)
  end

  def show
    @school_class = Student.find(params[:id])
  end

  def edit
    @school_class = Student.find(paraks[:id])
  end

  def update
    @school_class = Student.find(params[:id])
    @school_class = Student.update(params[:student])
    redirect_to student_path(@school_class)
  end
end
