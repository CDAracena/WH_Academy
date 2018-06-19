class StudentsController < ApplicationController
before_action :authenticate_user!
skip_before_action :verify_authenticity_token, only: [:destroy]

  def index

    @students = Student.all

  end

  def show
    @student = Student.find(params[:id])

  end

  def new
    @student = Student.new

  end

  def create
    @student = Student.create(student_params)


    redirect_to students_path

  end

  def edit
    @student = Student.find(params[:id])

  end

  def update

    student = Student.find(params[:id])
    student.update(student_params)

    redirect_to students_path

  end

  def destroy
    Student.destroy(params[:id])

    render json: {message: 'yo the student was deleted son'}
  end

  private

  def student_params
    # will return something that looks like this:
    # {name: '....', :description: '...'}

      params.require(:student).permit(:first_name, :last_name, :age, :highest_education)
  end

end
