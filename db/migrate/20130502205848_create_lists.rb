class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.integer :user_id
      t.integer :apartment_id
      t.string :comment
      t.timestamps
    end
  end
end
