class AddRefToFavorite < ActiveRecord::Migration[6.0]
  def change
    add_reference :favorites, :user, null: false, foreign_key: true
    add_reference :favorites, :shop, null: false, foreign_key: true
  end
end
