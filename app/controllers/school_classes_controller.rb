class SchoolClassesController < ApplicationController
    
    def index
        @klasses = SchoolClass.all
    end

    def new
       @class = SchoolClass.new 
    end

    def show
        @class = SchoolClass.find(params[:id])
    end

    def edit
        @class = SchoolClass.find(params[:id])
    end

    def update
        @class = SchoolClass.find(params[:id])
        @class.update(school_params)
        redirect_to school_class_path(@class)
    end

    def create
        @class = SchoolClass.new(school_params)
        @class.save
        redirect_to school_class_path(@class)
    end

    def destroy
        @student = SchoolClass.find(params[:id])
        @student.destroy
        redirect_to school_classes_path
    end

    private 

    def school_params
        params.require(:school_class).permit(:title, :room_number)
    end

end
