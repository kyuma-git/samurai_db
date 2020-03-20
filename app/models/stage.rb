class Stage < ApplicationRecord
  validates :name, uniqueness: true
end
