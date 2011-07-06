class StudentsController < ApplicationController
  
  def new
    @title = "Sign up"
  end
  
  def show
    @student = Student.find(params[:id])
  end

end
