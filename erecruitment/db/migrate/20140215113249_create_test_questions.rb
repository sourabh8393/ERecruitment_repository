class CreateTestQuestions < ActiveRecord::Migration
  def change
    create_table :test_questions do |t|
      t.text :question
      t.string :option_a
      t.string :option_b
      t.string :option_c
      t.string :option_d
      t.string :anwser

      t.timestamps
    end
  end
end
