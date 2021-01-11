class AddRefToTagging < ActiveRecord::Migration[6.0]
  def change
    add_reference :taggings, :tag, null: false, foreign_key: true
    add_reference :taggings, :shop, null: false, foreign_key: true
  end
end
