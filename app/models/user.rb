class User < ApplicationRecord
  has_many :repos
  self.inheritance_column = :_type_disabled
end
