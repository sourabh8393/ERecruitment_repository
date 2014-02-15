class My_question < ActiveRecord::Base
	 attr_accessible :answer, :option_a, :option_b, :option_c, :option_d, :question, :difficulty_level, :created_by, :question_type
end
