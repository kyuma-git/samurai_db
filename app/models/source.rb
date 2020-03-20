class Source < ApplicationRecord
  has_many :companies
  validates :name, uniqueness: { case_sensitive: true }
  validates :url, uniqueness: { case_sensitive: true }
end
