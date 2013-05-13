class AddColumeToApartment < ActiveRecord::Migration
  def change
    add_column :apartments, :zipcode, :integer
    add_column :apartments, :url, :string
    add_column :apartments, :neighborhood, :string
  end
end
