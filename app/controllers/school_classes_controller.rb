class SchoolClassesController < ApplicationController

    before_action :find_by_id, only: [:show, :edit, :update]

    def new
        @school_class = SchoolClass.new
    end

    def create 
        @school_class = SchoolClass.create(params[:school_class])

        redirect_to school_class_path(@school_class)
    end

    def show
        
    end
    
    def edit
        
    end
    
    def update
        @school_class.update(params[:school_class])
        @school_class.save

        redirect_to @school_class
    end

    private

    def find_by_id
       @school_class = SchoolClass.find(params[:id]) 
    end
    
end
