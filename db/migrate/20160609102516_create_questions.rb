class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.belongs_to :day
      t.string :question_text
      t.string :answer_text
      t.integer :number
      t.timestamps(null: false)
    end
  end
end
