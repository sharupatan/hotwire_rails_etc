module Pwddt
  class Aproduct < ApplicationRecord
    belongs_to :ashop
    has_many :acomments
  end
end