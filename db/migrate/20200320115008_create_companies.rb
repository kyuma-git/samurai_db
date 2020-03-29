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
      t.integer :stage_id, foreign_key: true

      t.timestamps

      t.index  [
        :id,
        :name,
        :total_funded_amount,
        :established_at,
        :last_funded_at,
        :funded_from_vc,
        :is_samurai_member,
        :source_id,
        :stage_id
      ], unique: true, :name => 'indexes_for_companies'
    end
  end
end
