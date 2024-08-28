module Pwddt
  class Acomment < ApplicationRecord
    belongs_to :commentable, polymorphic: true
  end
end