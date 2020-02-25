class StudentsController < ApplicationController
  before_action :find_student, only: [:edit, :show, :update]

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params(:first_name, :last_name))
    @student.save
    redirect_to student_path(@student)
  end

  def show

  end

  def edit

  end

  def update
    @student.update(student_params(:first_name, :last_name))
    @student.save
    redirect_to student_path(@student)
  end

  private

  def student_params (*arg)
    params.require(:student).permit(*arg)
  end
  
  def find_student
    @student = Student.find(params[:id])
  end

end