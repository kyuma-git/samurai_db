FactoryBot.define do
  factory :company_keyword do
    association :company
    association :keyword
  end
end
