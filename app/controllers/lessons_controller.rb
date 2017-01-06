class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all.order('created_at DESC')
  end

  def new
  end

  def create
    @lesson = Lesson.new(lesson_params)
    @lesson.save

    redirect_to @lesson
  end

  def show
    @lesson = Lesson.find(params[:id])
  end

  private
    def lesson_params
      params.require(:lesson).permit(:title, :body)
    end
end
