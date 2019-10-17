class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    set_student
  end

  private

    def active
      set_student
      @student.active = !@student.active
      @student.save
      redirect student_path(@student)
    end
    
    def set_student
      @student = Student.find(params[:id])
    end
end