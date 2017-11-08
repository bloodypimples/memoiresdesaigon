class RemovePriceAndTimeFromTour < ActiveRecord::Migration[5.1]
  def change
    remove_column :tours, :price, :string
    remove_column :tours, :time, :string
  end
end
