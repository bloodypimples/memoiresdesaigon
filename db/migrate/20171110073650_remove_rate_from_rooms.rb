class RemoveRateFromRooms < ActiveRecord::Migration[5.1]
  def change
    remove_column :rooms, :rate, :string
  end
end
