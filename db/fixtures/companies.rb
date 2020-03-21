require 'csv'

csv_file = File.read('db/fixtures/csv/seeds_samurai_db - 2020_0321_companies.csv')
csv = CSV.parse(csv_file, :headers => true)
csv.each do |row|
  row_hash = row.to_hash
  Company.seed(:id, row_hash)
end
