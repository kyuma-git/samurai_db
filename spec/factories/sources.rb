FactoryBot.define do
  factory :source do

    name { "Source Name" }
    url { "Source Url" }
  end

  trait :source_with_companies do
    transient do
      companies_count { 5 }
    end
    after(:build) do |source, evaluator|
      create_list(:company, evaluator.companies_count, source: source)
    end
  end
end
