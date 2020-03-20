FactoryBot.define do
  factory :company_award do
    association :company
    association :award
  end
end
