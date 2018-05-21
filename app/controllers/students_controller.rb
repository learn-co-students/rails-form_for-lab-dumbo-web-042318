class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :delete]

  def show
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(student_params)
    if @student.save
      redirect_to @student
    else
      render "new"
    end
  end

  def edit
  end

  def update
    @student.update(student_params)
    if @student.save
      redirect_to @student
    else
      render "edit"
    end
  end


  private

  def set_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end
end
