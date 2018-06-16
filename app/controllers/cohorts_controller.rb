class CohortsController < ApplicationController
  before_action :authenticate_user!
  def index
    @cohorts = Cohort.all

  end

  def show
    @cohort = Cohort.find(params[:id])

  end

  def new
    @cohort = Cohort.new
    @instructors = Instructor.all
    @courses = Course.all

  end

  def create
    Cohort.create(cohorts_params)


    redirect_to cohorts_path

  end

  def edit
    @cohort = Cohort.find(params[:id])


  end

  def update
    cohort = Cohort.find(params[:id])
    cohort.update(cohorts_params)

    redirect_to cohorts_path
  end

  def destroy
    Cohort.destroy(params[:id])

    redirect_to cohorts_path

  end

  private

  def cohorts_params
    # will return something that looks like this:
    # {name: '....', :description: '...'}

      params.require(:cohort).permit(:name, :start_date, :end_date, :course_id, :instructor_id)
  end
end
