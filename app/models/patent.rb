class Patent < ApplicationRecord
  belongs_to :company
  validates :name, uniqueness: { case_sensitive: true }
end
