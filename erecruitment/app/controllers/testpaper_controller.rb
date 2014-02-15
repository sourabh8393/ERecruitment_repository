class TestpaperController < ApplicationController
  def index
  	@my_questions=My_question.paginate(:page => params[:page], :per_page => 1).order(:created_by)
  end
end