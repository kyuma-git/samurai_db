require 'csv'

csv_file = File.read('db/fixtures/csv/industry_relations - 2020_0321_company_industries.csv')
csv = CSV.parse(csv_file, :headers => true)
csv.each do |row|
  row_hash = row.to_hash
  CompanyIndustry.seed(:id, row_hash)
end
