class Country < ApplicationRecord
  has_many :companies

  validates :name, uniqueness: { case_sensitive: true }
end
