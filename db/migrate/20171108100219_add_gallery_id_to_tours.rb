class AddGalleryIdToTours < ActiveRecord::Migration[5.1]
  def change
    add_column :tours, :gallery_id, :integer
  end
end
