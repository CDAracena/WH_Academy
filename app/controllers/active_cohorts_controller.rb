class ActiveCohortsController < ApplicationController
before_action :authenticate_user!
  def index
    @active_cohorts = ActiveCohort.all

  end

  def show
    @active_cohorts = ActiveCohort.all

  end

  def new
    @cohorts = Cohort.all
    @students = Student.all
    @active_cohort = ActiveCohort.new
    @instructors = Instructor.all

  end

  def create
    ActiveCohort.create(active_cohorts_params)

    redirect_to active_cohorts_path
  end

  def edit

  end

  def update

  end

  def destroy

    ActiveCohort.destroy(params[:id])

    redirect_to active_cohorts_path

  end

  private

  def active_cohorts_params
    # will return something that looks like this:
    # {name: '....', :description: '...'}

      params.require(:active_cohort).permit(:student_id, :cohort_id, :instructor_id)
  end


end
