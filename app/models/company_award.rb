class CompanyAward < ApplicationRecord
  belongs_to :company
  belongs_to :award

  validates :company_id
  validates :award_id
end
