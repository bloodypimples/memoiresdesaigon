class AddTourIdToForms < ActiveRecord::Migration[5.1]
  def change
    add_column :forms, :tour_id, :integer
  end
end
