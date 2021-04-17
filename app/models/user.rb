class User < ApplicationRecord
  has_many :repos
  self.inheritance_column = :_type_disabled

  def self.api_path
    'https://api.github.com/users/'
  end
end
