class CreateRelationQuestions < ActiveRecord::Migration
  def change
    create_table :relation_questions do |t|
      t.integer :my_question_id
      t.integer :ttest_question_id

      t.timestamps
    end
  end
end
