class CompanyAward < ApplicationRecord
  belongs_to :company
  belongs_to :award

  validate :company_id
  validate :award_id
end
