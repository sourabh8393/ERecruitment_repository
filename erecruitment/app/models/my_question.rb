class My_question < ActiveRecord::Base
	 attr_accessible :answer, :option_a, :option_b, :option_c, :option_d, :question, :difficulty_level, :created_by, :question_type

has_many :relation_questions
 before_destroy :ensure_not_referenced_by_any_relation_question

 private
 def ensure_not_referenced_by_any_relation_question
 if relation_questions.empty?
 return true
 else
 errors.add(:base, 'testpaper include this question you can not delete this')
 return false
 end
 end
end 