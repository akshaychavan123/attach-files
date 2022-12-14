class StudentsController < ApplicationController
  before_action :set_student , only: [:show , :edit , :update , :destroy]
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to students_path , notice: "the student has been saved and docs are uploaded"
    else
      render :new
    end
  end

  def edit
    
  end
  def update
    if @student.update(student_params)
    redirect_to students_path
    else
      render :edit
    end

  end

  def show
  end
  def destroy
    @student.destroy
    redirect_to students_path
  end
  private
  def student_params
    params.require(:student).permit(:name , :roll , :email , :docs)
  end
  def set_student
    @student = Student.find(params[:id])
  end
end
