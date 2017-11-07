class AddRoomIdToGallery < ActiveRecord::Migration[5.1]
  def change
    add_column :galleries, :room_id, :integer
  end
end
