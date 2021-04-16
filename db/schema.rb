# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_04_16_200302) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "users", id: :integer, default: nil, force: :cascade do |t|
    t.string "login"
    t.string "node_id"
    t.string "avatar_url"
    t.string "gravatar_id"
    t.string "url"
    t.string "html_url"
    t.string "followers_url"
    t.string "following_url"
    t.string "gists_url"
    t.string "starred_url"
    t.string "subscriptions_url"
    t.string "organizations_url"
    t.string "repos_url"
    t.string "events_url"
    t.string "received_events_url"
    t.string "type"
    t.boolean "site_admin"
    t.string "name"
    t.string "company"
    t.string "blog"
    t.string "location"
    t.string "email"
    t.string "hireable"
    t.string "bio"
    t.string "twitter_username"
    t.integer "public_repos"
    t.integer "public_gists"
    t.integer "followers"
    t.integer "following"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
