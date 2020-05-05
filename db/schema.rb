# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_05_215213) do

  create_table "admin_centers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_centers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_centers_on_reset_password_token", unique: true
  end

  create_table "admin_platforms", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_platforms_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_platforms_on_reset_password_token", unique: true
  end

  create_table "awards", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.date "date"
    t.bigint "center_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["center_id"], name: "index_awards_on_center_id"
  end

  create_table "centers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "full_name"
    t.string "short_name"
    t.string "website"
    t.string "address"
    t.date "start_date"
    t.float "building_area"
    t.float "property_area"
    t.float "property_private_funding"
    t.float "property_federal_funding"
    t.float "property_state_funding"
    t.float "property_other_funding"
    t.string "property_other_source"
    t.float "equipment_private_funding"
    t.float "equipment_federal_funding"
    t.float "equipment_state_funding"
    t.float "equipment_other_funding"
    t.string "equipment_other_source"
    t.integer "requested_patents_mexico"
    t.integer "requested_designs_mexico"
    t.integer "requested_patents_us_eu_as"
    t.integer "given_patents_mexico"
    t.integer "given_designs_mexico"
    t.integer "given_patents_us_eu_as"
    t.integer "trademarks"
    t.integer "copyrights"
    t.integer "isi_publications"
    t.integer "arbitrated_publications"
    t.integer "non_arbitrated_publications"
    t.integer "quotes_in_publications"
    t.string "director_name"
    t.string "director_email"
    t.string "director_phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "transfer_office_contact_name"
    t.string "transfer_office_contact"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_centers_on_user_id"
  end

  create_table "centers_clusters", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "cluster_id", null: false
    t.bigint "center_id", null: false
    t.index ["center_id"], name: "index_centers_clusters_on_center_id"
    t.index ["cluster_id"], name: "index_centers_clusters_on_cluster_id"
  end

  create_table "centers_industries", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "industry_id", null: false
    t.bigint "center_id", null: false
    t.index ["center_id"], name: "index_centers_industries_on_center_id"
    t.index ["industry_id"], name: "index_centers_industries_on_industry_id"
  end

  create_table "clusters", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_clusters_on_user_id"
  end

  create_table "companies", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "industry"
    t.string "reniecyt"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_companies_on_user_id"
  end

  create_table "entrepreneurs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "organization"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_entrepreneurs_on_user_id"
  end

  create_table "equipment", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.boolean "available"
    t.bigint "center_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["center_id"], name: "index_equipment_on_center_id"
  end

  create_table "idti_areas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.bigint "center_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["center_id"], name: "index_idti_areas_on_center_id"
  end

  create_table "idti_services", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "industry"
    t.bigint "center_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["center_id"], name: "index_idti_services_on_center_id"
  end

  create_table "industries", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "intellectual_properties", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "creation"
    t.string "description"
    t.string "institution"
    t.integer "registration_year"
    t.integer "publication_year"
    t.string "keywords"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "researcher_id"
    t.index ["researcher_id"], name: "index_intellectual_properties_on_researcher_id"
  end

  create_table "researchers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_researchers_on_user_id"
  end

  create_table "scientific_articles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title"
    t.string "authors"
    t.date "publication_date"
    t.string "magazine"
    t.string "volume"
    t.integer "number"
    t.integer "first_page"
    t.integer "last_page"
    t.string "doi"
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "researcher_id"
    t.index ["researcher_id"], name: "index_scientific_articles_on_researcher_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role"
    t.string "name"
    t.string "organization"
    t.string "job"
    t.string "contact_telephone"
    t.string "office_telephone"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "versions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "item_type", limit: 191, null: false
    t.bigint "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object", limit: 4294967295
    t.datetime "created_at"
    t.text "object_changes", limit: 4294967295
    t.index ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id"
  end

  add_foreign_key "awards", "centers"
  add_foreign_key "centers", "users"
  add_foreign_key "clusters", "users"
  add_foreign_key "companies", "users"
  add_foreign_key "entrepreneurs", "users"
  add_foreign_key "equipment", "centers"
  add_foreign_key "idti_areas", "centers"
  add_foreign_key "idti_services", "centers"
  add_foreign_key "intellectual_properties", "researchers"
  add_foreign_key "researchers", "users"
  add_foreign_key "scientific_articles", "researchers"
end
