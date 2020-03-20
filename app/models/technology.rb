class Technology < ApplicationRecord
  validates :name, uniqueness: true
end
