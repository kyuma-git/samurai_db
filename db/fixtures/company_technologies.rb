require 'csv'

csv_file = File.read('db/fixtures/csv/relation_technologies - company_technologies.csv')
csv = CSV.parse(csv_file, :headers => true)
csv.each do |row|
  row_hash = row.to_hash
  CompanyTechnology.seed(:id, row_hash)
end
