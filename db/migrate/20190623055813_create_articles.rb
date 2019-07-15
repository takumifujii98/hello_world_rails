class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :body
      t.string :status, default: "draft"
      t.timestamps
    end
  end
end
