ActiveRecord::Schema.define(version: 2021_01_10_062608) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "favorites", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.bigint "shop_id", null: false
    t.index ["shop_id"], name: "index_favorites_on_shop_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "shops", force: :cascade do |t|
    t.string "shop_name", null: false
    t.text "content", null: false
    t.string "place", null: false
    t.boolean "power_supply", null: false
    t.boolean "wifi", null: false
    t.string "density"
    t.string "customer_base"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_shops_on_user_id"
  end

  create_table "taggings", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "tag_id", null: false
    t.bigint "shop_id", null: false
    t.index ["shop_id"], name: "index_taggings_on_shop_id"
    t.index ["tag_id"], name: "index_taggings_on_tag_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.string "image", null: false
    t.boolean "admin", default: false, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "favorites", "shops"
  add_foreign_key "favorites", "users"
  add_foreign_key "shops", "users"
  add_foreign_key "taggings", "shops"
  add_foreign_key "taggings", "tags"
end
