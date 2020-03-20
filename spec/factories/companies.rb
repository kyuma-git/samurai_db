FactoryBot.define do
  factory :company do
    association :stage
    association :source

    name { "Company Name" }
    overview { "Company Overview" }
    website_url { "Company Website Url" }
    total_funded_amount { 1000000000 }
    established_at { "2020-03-20" }
    last_funded_at { "2020-03-20" }
    funded_from_vc { false }
    is_samurai_member { false }
  end
end
