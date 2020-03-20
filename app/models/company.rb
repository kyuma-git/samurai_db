class Company < ApplicationRecord
  belongs_to :stage
  belongs_to :source

  validates :name, uniqueness: { case_sensitive: true }
end
