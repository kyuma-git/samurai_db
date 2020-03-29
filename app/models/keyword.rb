class Keyword < ApplicationRecord
  has_many :company_keywords
  has_many :companies, through: :company_keywords

  validates :name, uniqueness: { case_sensitive: true }
end
