class Repo < ApplicationRecord
  belongs_to :user

  def self.api_path
    'https://api.github.com/users/'
  end
end
