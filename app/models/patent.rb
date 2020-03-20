class Patent < ApplicationRecord
  validates :name, uniqueness: true
end
