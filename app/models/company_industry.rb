class CompanyIndustry < ApplicationRecord
  belongs_to :company
  belongs_to :industry

  validates :company_id
  validates :industry_id
end
