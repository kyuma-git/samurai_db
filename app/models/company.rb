class Company < ApplicationRecord
  belongs_to :stage
  belongs_to :source
  belongs_to :country

  has_many :patents

  has_many :company_industries
  has_many :industries, through: :company_industries
  has_many :company_keywords
  has_many :keywords, through: :company_keywords
  has_many :company_technologies
  has_many :technologies, through: :company_technologies
  has_many :company_awards
  has_many :awards, through: :company_awards

  validates :name, uniqueness: { case_sensitive: true }
end
