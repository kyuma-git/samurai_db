FactoryBot.define do
  factory :company do
    association :stage
    association :source
    association :country

    name { "Company Name" }
    overview { "Company Overview" }
    website_url { "Company Website Url" }
    total_funded_amount { 1000000000 }
    established_at { "2020-03-20" }
    last_funded_at { "2020-03-20" }
    funded_from_vc { false }
    is_samurai_member { false }

    after(:build) do |company|
      award = create(:award)
      company.company_awards << build(:company_award, company: company, award: award)
    end

    after(:build) do |company|
      industry = create(:industry)
      company.company_industries << build(:company_industry, company: company, industry: industry)
    end

    after(:build) do |company|
      keyword = create(:keyword)
      company.company_keywords << build(:company_keyword, company: company, keyword: keyword)
    end

    after(:build) do |company|
      technology = create(:technology)
      company.company_technologies << build(:company_technology, company: company, technology: technology)
    end
  end
end
