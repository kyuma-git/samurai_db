FactoryBot.define do
  factory :patent do
    association :company

    name { "Patent Name" }
    overview { "Patent Overview Texts" }
    approved_at { "2020-03-20" }
  end
end
