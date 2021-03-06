class CoursesController < ApplicationController
  before_action :authenticate_user!
  skip_before_action :verify_authenticity_token, only: [:destroy]
  def index
    @courses = Course.all

  end

  def show
    @course = Course.find(params[:id])

  end

  def new
    @course = Course.new

  end

  def create
    Course.create(courses_params)

    redirect_to courses_path

  end

  def edit
    @course = Course.find(params[:id])

  end

  def update
    course = Course.find(params[:id])
    course.update(courses_params)

    redirect_to courses_path
  end

  def destroy
    Course.destroy(params[:id])

    render json: {message: 'yo the course was deleted son'}
  end

  private

  def courses_params
    # will return something that looks like this:
    # {name: '....', :description: '...'}

      params.require(:course).permit(:name, :total_class_hours)
  end
end
