class CompanyKeyword < ApplicationRecord
  belongs_to :company
  belongs_to :keyword

  validate :company_id
  validate :keyword_id
end
