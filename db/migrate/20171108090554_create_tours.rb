class CreateTours < ActiveRecord::Migration[5.1]
  def change
    create_table :tours do |t|
      t.string :name
      t.string :description
      t.text :body
      t.string :price
      t.string :time

      t.timestamps
    end
  end
end
