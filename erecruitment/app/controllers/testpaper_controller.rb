class TestpaperController < ApplicationController
  def index
  	@my_questions=My_question.order(:created_by)
  end
end
