class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def edit
    @student = Student.find(params[:id])
  end

  def create
    @student = Student.new(new_params)
    @student.save

    redirect_to @student
  end

  def update
    @student = Student.find(params[:id])
    @student.update(new_params)

    redirect_to @student
  end

  private

  def new_params
    params.require(:student).permit(:first_name, :last_name)

  end

end
