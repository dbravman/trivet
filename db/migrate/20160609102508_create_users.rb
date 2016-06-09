class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :ll_username
      t.string :gmail
      t.string :hashword
      t.timestamps(null: false)
    end
  end
end
