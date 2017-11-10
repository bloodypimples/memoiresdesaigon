class AddRateToRooms < ActiveRecord::Migration[5.1]
  def change
    add_column :rooms, :rate, :integer
  end
end
