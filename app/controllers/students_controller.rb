class StudentsController < ApplicationController

    before_action :find_by_id, only: [:show, :edit, :update]

    def new
        @student = Student.new
    end

    def create 
        @student = Student.create(params[:student])

        redirect_to student_path(@student)
    end

    def show
        
    end
    
    def edit
        
    end
    
    def update
        @student.update(params[:student])

        redirect_to @student
    end
    
    private 
    
    def find_by_id
      @student = Student.find(params[:id])
    end

end