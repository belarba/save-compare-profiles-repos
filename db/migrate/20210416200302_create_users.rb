class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users  do |t|

      t.integer :git_id
      t.string :login
      t.string :node_id
      t.string :avatar_url
      t.string :gravatar_id
      t.string :url
      t.string :html_url
      t.string :followers_url
      t.string :following_url
      t.string :gists_url
      t.string :starred_url
      t.string :subscriptions_url
      t.string :organizations_url
      t.string :repos_url
      t.string :events_url
      t.string :received_events_url
      t.string :type
      t.boolean :site_admin
      t.string :name
      t.string :company
      t.string :blog
      t.string :location
      t.string :email
      t.string :hireable
      t.string :bio
      t.string :twitter_username
      t.integer :public_repos
      t.integer :public_gists
      t.integer :followers
      t.integer :following

      t.timestamps
    end
  end
end
