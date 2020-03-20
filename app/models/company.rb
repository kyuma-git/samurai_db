class Company < ApplicationRecord
  belongs_to :source
  validates :name, uniqueness: true
end
