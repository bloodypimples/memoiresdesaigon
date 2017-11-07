class AddGalleryIdToGalleryImage < ActiveRecord::Migration[5.1]
  def change
    add_column :gallery_images, :gallery_id, :integer
  end
end
