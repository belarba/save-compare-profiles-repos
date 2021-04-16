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

ActiveRecord::Schema.define(version: 2021_04_16_204904) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "repos", id: :integer, default: nil, force: :cascade do |t|
    t.string "node_id"
    t.string "name"
    t.string "full_name"
    t.boolean "private"
    t.string "html_url"
    t.string "description"
    t.boolean "fork"
    t.string "url"
    t.string "forks_url"
    t.string "keys_url"
    t.string "collaborators_url"
    t.string "teams_url"
    t.string "hooks_url"
    t.string "issue_events_url"
    t.string "events_url"
    t.string "assignees_url"
    t.string "branches_url"
    t.string "tags_url"
    t.string "blobs_url"
    t.string "git_tags_url"
    t.string "git_refs_url"
    t.string "trees_url"
    t.string "statuses_url"
    t.string "languages_url"
    t.string "stargazers_url"
    t.string "contributors_url"
    t.string "subscribers_url"
    t.string "subscription_url"
    t.string "commits_url"
    t.string "git_commits_url"
    t.string "comments_url"
    t.string "issue_comment_url"
    t.string "contents_url"
    t.string "compare_url"
    t.string "merges_url"
    t.string "archive_url"
    t.string "downloads_url"
    t.string "issues_url"
    t.string "pulls_url"
    t.string "milestones_url"
    t.string "notifications_url"
    t.string "labels_url"
    t.string "releases_url"
    t.string "deployments_url"
    t.datetime "pushed_at"
    t.string "git_url"
    t.string "ssh_url"
    t.string "clone_url"
    t.string "svn_url"
    t.string "homepage"
    t.integer "size"
    t.integer "stargazers_count"
    t.integer "watchers_count"
    t.string "language"
    t.boolean "has_issues"
    t.boolean "has_projects"
    t.boolean "has_downloads"
    t.boolean "has_wiki"
    t.boolean "has_pages"
    t.integer "forks_count"
    t.string "mirror_url"
    t.boolean "archived"
    t.boolean "disabled"
    t.integer "open_issues_count"
    t.integer "forks"
    t.integer "open_issues"
    t.integer "watchers"
    t.string "default_branch"
    t.string "license_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

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
