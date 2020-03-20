class CompanyTechnology < ApplicationRecord
  belongs_to :company
  belongs_to :technology

  validates :company_id
  validates :technology_id
end
