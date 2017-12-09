class CreateAmazonApiData < ActiveRecord::Migration
  def change
    create_table :amazon_api_data do |t|
      t.string :id_type
      t.string :item_id
      t.text :main_image_url
      t.string :product_id

      t.timestamps null: false
    end
  end
end
