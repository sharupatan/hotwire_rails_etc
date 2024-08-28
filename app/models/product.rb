class Product < ApplicationRecord
  has_many :comments, as: :commentable
  belongs_to :shop
end