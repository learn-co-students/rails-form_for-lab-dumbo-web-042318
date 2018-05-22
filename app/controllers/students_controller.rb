class StudentsController < ApplicationController

before_action :set_student, only: [:show, :edit, :update]

  def index
    @students= Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    @student.save
    redirect_to @student
  end

  def show
  end

  def edit
  end

  def update
    @student.update(params[:student])

    redirect_to students_path
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end
end
