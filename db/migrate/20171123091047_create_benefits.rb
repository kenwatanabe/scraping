class CreateBenefits < ActiveRecord::Migration
  def change
    create_table :benefits do |t|
      t.integer :type_id
      t.integer :shop_id
      t.text :image_url

      t.timestamps null: false
    end
  end
end
