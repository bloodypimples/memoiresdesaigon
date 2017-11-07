class CreateGalleryImages < ActiveRecord::Migration[5.1]
  def change
    create_table :gallery_images do |t|

      t.timestamps
    end
  end
end
