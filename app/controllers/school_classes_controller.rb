class SchoolClassesController < ApplicationController
  def index 
    @classes = SchoolClass.all
  end 

  def new
    @class = SchoolClass.new
  end

  def show
    @class = SchoolClass.find(params[:id])
  end

  def create
   
    @class = SchoolClass.create(params.require(:school_class).permit(:title, :room_number))
    redirect_to @class
  end

  def edit
    
    @class = SchoolClass.find(params[:id])
    # raise params.inspect
  end

  def update
    @class = SchoolClass.find(params[:id])
    @class.update(params.require(:school_class).permit(:title, :room_number))
    redirect_to @class
  end

  private

  def school_class_params
    params.require(:school_class).permit!
  end

end

