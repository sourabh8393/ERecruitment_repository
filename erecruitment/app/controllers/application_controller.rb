class ApplicationController < ActionController::Base
 
  protect_from_forgery with: :exception

  private

 def current_ttest_question
 TtestQuestion.find(session[:ttest_question_id])
 rescue ActiveRecord::RecordNotFound
 ttest_question = TtestQuestion.create
 session[:ttest_question_id] = ttest_question.id
 ttest_question
 end
end
  
