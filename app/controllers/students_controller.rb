class StudentsController < ApplicationController

  def index
    name=params[:name]
    if name==nil
      students = Student.all
      render json: students
    else
      student = Student.all.filter {|student| student.first_name.downcase==name || student.last_name.downcase==name}
      render json: student
    end
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

 

end
