class AddStreetNameToPlaces < ActiveRecord::Migration[5.1]
  def change
    add_column :places, :street_name, :string
  end
end
