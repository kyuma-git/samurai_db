class Source < ApplicationRecord
  validates :name, uniqueness: true
  validates :url, uniqueness: true
end
