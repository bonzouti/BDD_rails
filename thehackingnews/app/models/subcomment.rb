class Subcomment < ApplicationRecord
  belongs_to :comment
  has_many :user
end
