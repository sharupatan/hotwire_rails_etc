class Shop < ApplicationRecord
  has_many :comments, as: :commentable
  has_many :products
end