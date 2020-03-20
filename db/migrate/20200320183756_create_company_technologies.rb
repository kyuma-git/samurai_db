class CreateCompanyTechnologies < ActiveRecord::Migration[6.0]
  def change
    create_table :company_technologies do |t|
      t.integer :company_id, foreign_key: true
      t.integer :technology_id, foreign_key: true

      t.timestamps
    end
  end
end
