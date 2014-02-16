json.array!(@ttest_questions) do |ttest_question|
  json.extract! ttest_question, :id, :question, :option_a, :option_b, :option_c, :option_d, :anwser, :question_type, :created_by, :difficulty_level
  json.url ttest_question_url(ttest_question, format: :json)
end
