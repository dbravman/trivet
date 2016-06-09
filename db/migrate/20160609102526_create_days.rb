class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.belongs_to :season
      t.integer :number
      t.string :ll_link
      t.timestamps(null: false)
    end
  end
end
