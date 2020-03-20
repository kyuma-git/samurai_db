class AddColumnToPatent < ActiveRecord::Migration[6.0]
  def change
    add_column :patents, :overview, :string
    add_column :patents, :approved_at, :date
    add_column :patents, :comapny_id, :integer, foreign_key: true
  end
end
