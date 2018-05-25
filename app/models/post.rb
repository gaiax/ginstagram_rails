class Post < ApplicationRecord
  has_many :image, dependent: :delete_all
end
