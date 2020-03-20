class Award < ApplicationRecord
  validates :name, uniqueness: true
end
