class Technology < ApplicationRecord
  has_many :company_technologies
  has_many :companies, through: :company_technologies

  validates :name, uniqueness: { case_sensitive: true }
end
