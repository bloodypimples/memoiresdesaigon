class RemoveGalleryIdFromTours < ActiveRecord::Migration[5.1]
  def change
    remove_column :tours, :gallery_id, :integer
  end
end
