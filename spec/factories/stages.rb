FactoryBot.define do
  factory :stage do
    name { "Stage Name" }
  end

  trait :stage_with_companies do
    transient do
      companies_count { 5 }
    end
    #after(:create)にするとbuild時に発動しないが、after(:build)だとcreate時でも発動する
    after(:build) do |stage, evaluator|
      create_list(:company, evaluator.companies_count, stage: stage)
    end
  end
end
