module Pwddt
  class Ashop < ApplicationRecord
    has_many :acomments, as: :commentable
    has_many :aproducts
  end
end