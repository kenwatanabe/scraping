class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.text :title
      t.text :content
      t.integer :view_count

      t.timestamps null: false
    end
  end
end
