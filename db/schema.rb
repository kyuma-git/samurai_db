
ActiveRecord::Schema.define(version: 2020_03_20_115008) do

  create_table "companies", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.string "overview"
    t.string "website_url"
    t.integer "total_funded_amount"
    t.date "established_at"
    t.date "last_funded_at"
    t.boolean "funded_from_vc"
    t.boolean "is_samurai_member"
    t.integer "source_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sources", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
