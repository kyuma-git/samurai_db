class AddColumnToCompany < ActiveRecord::Migration[6.0]
  def change
    add_column :companies, :country_id, :integer, foreign_key: true
  end
end
