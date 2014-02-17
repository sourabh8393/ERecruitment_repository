class TtestpaperController < ApplicationController
  def index
  	@my_questions = My_question.order(:question)
  end
end
