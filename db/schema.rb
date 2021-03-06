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

ActiveRecord::Schema.define(version: 20170823192230) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admin_blog_modules", force: :cascade do |t|
    t.string "name"
    t.text "body"
    t.string "layout"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "post_page_id"
    t.index ["post_page_id"], name: "index_admin_blog_modules_on_post_page_id"
  end

  create_table "admin_blog_posts", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.integer "position"
    t.integer "blog_module_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.text "teaser"
    t.index ["blog_module_id"], name: "index_admin_blog_posts_on_blog_module_id"
  end

  create_table "admin_carousel_modules", force: :cascade do |t|
    t.string "name"
    t.string "layout"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_carousel_slides", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.integer "position"
    t.integer "carousel_module_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.integer "page_id"
    t.index ["carousel_module_id"], name: "index_admin_carousel_slides_on_carousel_module_id"
    t.index ["page_id"], name: "index_admin_carousel_slides_on_page_id"
  end

  create_table "admin_csv_imports", force: :cascade do |t|
    t.string "name"
    t.string "import_type"
    t.text "comments"
    t.text "summary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "csv_file_file_name"
    t.string "csv_file_content_type"
    t.integer "csv_file_file_size"
    t.datetime "csv_file_updated_at"
    t.string "string_file_name"
    t.string "string_content_type"
    t.integer "string_file_size"
    t.datetime "string_updated_at"
  end

  create_table "admin_dmi_modules", force: :cascade do |t|
    t.string "forecast_duration", default: "days_two_forecast"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_footers", force: :cascade do |t|
    t.string "title"
    t.string "locale"
    t.string "about_link"
    t.string "about_link_name"
    t.string "email"
    t.string "email_name"
    t.string "terms_of_usage_link"
    t.string "terms_of_usage_link_name"
    t.string "info"
    t.string "copyright"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_gallery_images", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.integer "gallery_module_id"
    t.bigint "user_id"
    t.integer "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.index ["gallery_module_id"], name: "index_admin_gallery_images_on_gallery_module_id"
    t.index ["user_id"], name: "index_admin_gallery_images_on_user_id"
  end

  create_table "admin_gallery_modules", force: :cascade do |t|
    t.string "name"
    t.text "body"
    t.string "layout"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "page_id"
    t.index ["page_id"], name: "index_admin_gallery_modules_on_page_id"
  end

  create_table "admin_image_modules", force: :cascade do |t|
    t.string "layout"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_post_modules", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_subscription_modules", force: :cascade do |t|
    t.string "name"
    t.text "body"
    t.string "layout"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_subscription_types", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.boolean "internet_version"
    t.boolean "print_version"
    t.decimal "price"
    t.string "locale"
    t.boolean "active"
    t.integer "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "position", default: 0
  end

  create_table "admin_subscriptions", force: :cascade do |t|
    t.integer "subscription_type_id"
    t.string "duration"
    t.date "start_date"
    t.date "end_date"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subscription_type_id"], name: "index_admin_subscriptions_on_subscription_type_id"
    t.index ["user_id"], name: "index_admin_subscriptions_on_user_id"
  end

  create_table "admin_system_setups", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "landing_page_id"
    t.integer "subscription_page_id"
    t.integer "post_page_id"
    t.string "locale"
    t.string "locale_name"
    t.string "welcome_page_id"
  end

  create_table "page_modules", force: :cascade do |t|
    t.bigint "page_id"
    t.string "moduleable_type"
    t.bigint "moduleable_id"
    t.integer "slot_id"
    t.integer "position", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["moduleable_type", "moduleable_id"], name: "index_page_modules_on_moduleable_type_and_moduleable_id"
    t.index ["page_id"], name: "index_page_modules_on_page_id"
  end

  create_table "pages", force: :cascade do |t|
    t.string "title"
    t.string "menu_title"
    t.string "menu_id"
    t.integer "menu_position", default: 0
    t.boolean "active"
    t.string "locale"
    t.bigint "user_id"
    t.string "layout", default: "alabama"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "require_subscription", default: false
    t.integer "footer_id"
    t.string "color_row_1"
    t.integer "height_row_1"
    t.string "color_row_2"
    t.integer "height_row_2"
    t.string "color_row_3"
    t.integer "height_row_3"
    t.string "row_1_background_file_name"
    t.string "row_1_background_content_type"
    t.integer "row_1_background_file_size"
    t.datetime "row_1_background_updated_at"
    t.string "row_2_background_file_name"
    t.string "row_2_background_content_type"
    t.integer "row_2_background_file_size"
    t.datetime "row_2_background_updated_at"
    t.string "row_3_background_file_name"
    t.string "row_3_background_content_type"
    t.integer "row_3_background_file_size"
    t.datetime "row_3_background_updated_at"
    t.index ["footer_id"], name: "index_pages_on_footer_id"
    t.index ["user_id"], name: "index_pages_on_user_id"
  end

  create_table "payments", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "address"
    t.string "postal_code_and_city"
    t.string "password"
    t.string "password_confirmation"
    t.boolean "news_letter"
    t.integer "subscription_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subscription_id"], name: "index_payments_on_subscription_id"
    t.index ["user_id"], name: "index_payments_on_user_id"
  end

  create_table "pg_search_documents", force: :cascade do |t|
    t.text "content"
    t.string "searchable_type"
    t.bigint "searchable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["searchable_type", "searchable_id"], name: "index_pg_search_documents_on_searchable_type_and_searchable_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.text "identifier"
    t.integer "position"
    t.string "locale", default: "da"
    t.string "postable_type"
    t.bigint "postable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["postable_type", "postable_id"], name: "index_posts_on_postable_type_and_postable_id"
  end

  create_table "roles", force: :cascade do |t|
    t.bigint "user_id"
    t.string "permission", default: "member"
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_roles_on_user_id"
  end

  create_table "text_modules", force: :cascade do |t|
    t.string "title", default: ""
    t.text "body", default: ""
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "layout"
    t.string "url"
    t.string "url_text"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.string "image_size"
    t.integer "page_id"
    t.string "show_to"
    t.index ["page_id"], name: "index_text_modules_on_page_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "password_digest", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.integer "legacy_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "admin_subscriptions", "users"
  add_foreign_key "page_modules", "pages"
  add_foreign_key "payments", "users"
  add_foreign_key "roles", "users"
end
