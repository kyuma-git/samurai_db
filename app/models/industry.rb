class Industry < ApplicationRecord
  validates :name, uniqueness: true
end
