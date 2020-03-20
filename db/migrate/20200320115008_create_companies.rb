class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :name, null: false
      t.string :overview
      t.string :website_url
      t.integer :total_funded_amount
      t.date :established_at
      t.date :last_funded_at
      t.boolean :funded_from_vc
      t.boolean :is_samurai_member
      t.integer :source_id, foreign_key: true

      t.timestamps
    end
  end
end
