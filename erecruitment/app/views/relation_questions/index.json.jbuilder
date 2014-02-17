json.array!(@relation_questions) do |relation_question|
  json.extract! relation_question, :id, :my_question_id, :ttest_question_id
  json.url relation_question_url(relation_question, format: :json)
end
