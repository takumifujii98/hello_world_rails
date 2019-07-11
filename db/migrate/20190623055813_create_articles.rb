class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :body
      t.integer :status, null: false
      t.timestamps
    end
  end
end
