json.array!(@test_questions) do |test_question|
  json.extract! test_question, :id, :question, :option_a, :option_b, :option_c, :option_d, :anwser
  json.url test_question_url(test_question, format: :json)
end
