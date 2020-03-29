class CreateCompanyAwards < ActiveRecord::Migration[6.0]
  def change
    create_table :company_awards do |t|
      t.integer :company_id, foreign_key: true
      t.integer :award_id, foreign_key: true

      t.timestamps
    end
  end
end
