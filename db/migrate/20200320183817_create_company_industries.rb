class CreateCompanyIndustries < ActiveRecord::Migration[6.0]
  def change
    create_table :company_industries do |t|
      t.integer :company_id, foreign_key: true
      t.integer :industry_id, foreign_key: true

      t.timestamps
    end
  end
end
