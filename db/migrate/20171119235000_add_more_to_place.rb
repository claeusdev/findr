class AddMoreToPlace < ActiveRecord::Migration[5.1]
  def change
    add_column :places, :city, :string
    add_column :places, :region, :string
  end
end
