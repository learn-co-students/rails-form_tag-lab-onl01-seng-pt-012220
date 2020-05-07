class StudentsController < ApplicationController
  
  #get /students
  def index
    @students = Student.all
  end

  #get /students/:id
  def show
    @student = Student.find(params[:id])
  end

  #get /students/new
  def new

  end

  #post /students
  def create
    student = Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    redirect_to students_path
  end
end
