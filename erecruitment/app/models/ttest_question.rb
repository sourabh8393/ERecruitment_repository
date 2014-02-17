class TtestQuestion < ActiveRecord::Base
	has_many :relation_questions,  dependent: :destroy 
end
