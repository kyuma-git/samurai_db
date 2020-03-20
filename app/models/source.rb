class Source < ApplicationRecord
  has_many :companies
  validates :name, uniqueness: true
  validates :url, uniqueness: true
end
