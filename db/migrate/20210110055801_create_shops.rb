class CreateShops < ActiveRecord::Migration[6.0]
  def change
    create_table :shops do |t|
      t.string :shop_name, null: false, unique: true
      t.text :content, null: false
      t.string :place, null: false, unique: true
      t.boolean :power_supply, null: false
      t.boolean :wifi, null: false
      t.string :density
      t.string :customer_base
      t.string :image
      t.timestamps
    end
  end
end
