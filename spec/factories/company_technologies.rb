FactoryBot.define do
  factory :company_technology do
    association :company
    association :technology
  end
end
