class AddShortDescriptionToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :short_description, :string
  end
end
