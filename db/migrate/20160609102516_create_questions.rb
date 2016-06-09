class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.belongs_to :day
      t.string :answer
      t.integer :number
      t.string :ll_link
      t.timestamps(null: false)
    end
  end
end
