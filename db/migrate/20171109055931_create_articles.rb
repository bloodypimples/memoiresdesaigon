class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :name
      t.integer :user_id
      t.text :body

      t.timestamps
    end
  end
end
