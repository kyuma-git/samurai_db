class CompanyKeyword < ApplicationRecord
  belongs_to :company
  belongs_to :keyword

  validates :company_id
  validates :keyword_id
end
