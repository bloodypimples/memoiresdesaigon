class CreateTourForms < ActiveRecord::Migration[5.1]
  def change
    create_table :tour_forms do |t|
      t.integer :tour_id
      t.string :name
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
