class SchoolClassesController < ApplicationController

  def new
  end

  def create
    @school_class = SchoolClass.new(first_name: params[:first_name], last_name: params[:last_name])
    @school_class.save
    redirect_to student_path(@school_class)
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def edit
    @school_class = SchoolClass.find(paraks[:id])
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class = SchoolClass.update(params[:school_class])
    redirect_to student_path(@school_class)
  end
end
