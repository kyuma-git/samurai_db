class CompanyTechnology < ApplicationRecord
  belongs_to :company
  belongs_to :technology

  validate :company_id
  validate :technology_id
end
