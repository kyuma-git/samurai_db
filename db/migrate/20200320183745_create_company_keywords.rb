class CreateCompanyKeywords < ActiveRecord::Migration[6.0]
  def change
    create_table :company_keywords do |t|
      t.integer :company_id, foreign_key: true
      t.integer :keyword_id, foreign_key: true

      t.timestamps
    end
  end
end
