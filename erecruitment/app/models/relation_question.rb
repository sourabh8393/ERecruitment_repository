class RelationQuestion < ActiveRecord::Base
	belongs_to :my_question
	belongs_to :ttest_question
end
