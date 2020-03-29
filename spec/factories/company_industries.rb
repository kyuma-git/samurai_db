FactoryBot.define do
  factory :company_industry do
    association :company
    association :industry
  end
end
