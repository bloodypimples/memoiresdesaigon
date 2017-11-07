class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.string :name
      t.text :long_description
      t.string :short_description
      t.string :rate
      t.string :size
      t.string :bed
      t.string :occupancy

      t.timestamps
    end
  end
end
