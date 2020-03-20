class CreateKeywords < ActiveRecord::Migration[6.0]
  def change
    create_table :keywords do |t|
      t.string :name

      t.timestamps

      t.index :id, unique: true
    end
  end
end
