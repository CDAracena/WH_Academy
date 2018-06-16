class InstructorsController < ApplicationController
  before_action :authenticate_user!
  def index
    @instructors = Instructor.all
  end

  def show
    @instructor = Instructor.find(params[:id])
    @cohorts = Cohort.all


  end

  def new
    @instructor = Instructor.new

  end

  def create
    Instructor.create(instructors_params)

    redirect_to instructors_path

  end

  def edit
    @instructor = Instructor.find(params[:id])

  end

  def update

    instructor = Instructor.find(params[:id])
    instructor.update(instructors_params)

    redirect_to instructors_path

  end

  def destroy
    Instructor.destroy(params[:id])

    redirect_to instructors_path

  end

  private

  def instructors_params
    # will return something that looks like this:
    # {name: '....', :description: '...'}

      params.require(:instructor).permit(:first_name, :last_name, :salary, :highest_education)
  end
end
