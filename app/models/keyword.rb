class Keyword < ApplicationRecord
  validates :name, uniqueness: true
end
