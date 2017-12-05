class AddBookableToRooms < ActiveRecord::Migration[5.1]
  def change
    add_column :rooms, :bookable, :boolean, default: true
  end
end
