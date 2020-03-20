class Technology < ApplicationRecord
  validates :name, uniqueness: { case_sensitive: true }
end
