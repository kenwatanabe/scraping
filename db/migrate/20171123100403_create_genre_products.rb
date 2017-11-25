class CreateGenreProducts < ActiveRecord::Migration
  def change
    create_table :genre_products do |t|

      t.integer     :genre_id,   null: false
      t.integer     :product_id, null: false
      t.timestamps               null: false
      
    end
  end
end
