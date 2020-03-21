class ChangeColumnCompany < ActiveRecord::Migration[6.0]
  def change
    change_column :companies, :overview, :text
  end
end
