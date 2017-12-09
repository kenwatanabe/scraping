class CreateArticleProducts < ActiveRecord::Migration
  def change
    create_table :article_products do |t|
      t.integer :article_id
      t.integer :product_id

      t.timestamps null: false
    end
  end
end
