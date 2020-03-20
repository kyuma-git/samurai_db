class Award < ApplicationRecord
  has_many :company_awards
  has_many :companies, through: :company_awards

  validates :name, uniqueness: { case_sensitive: true }
end
