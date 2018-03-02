class AddHomePageDescriptionToRooms < ActiveRecord::Migration[5.1]
  def change
    add_column :rooms, :home_page_description, :string
  end
end
