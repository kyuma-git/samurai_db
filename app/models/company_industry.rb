class CompanyIndustry < ApplicationRecord
  belongs_to :company
  belongs_to :industry

  validate :company_id
  validate :industry_id
end
