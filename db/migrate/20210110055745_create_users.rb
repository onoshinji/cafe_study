class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name, null: false, unique: true
      t.string :email, null: false, unique: true
      t.string :image, null: false
      t.boolean :admin, null: false, default: false
      t.timestamps
    end
  end
end
