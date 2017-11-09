class RemoveServiceFromForms < ActiveRecord::Migration[5.1]
  def change
    remove_column :forms, :service, :string
  end
end
