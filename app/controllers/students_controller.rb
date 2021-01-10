class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find_by_id(params[:id])
  end

  def activate
    @student = Student.find_by_id(params[:id])
    @student.toggle!(:active)
    @student.save
    redirect_to student_path(@student)
    
  end

  
  

  
  
end