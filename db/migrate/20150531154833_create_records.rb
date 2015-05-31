class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.integer :owner_id
      t.string :owner_type

      t.timestamps null: false
    end
    add_index :records, :owner_id
    add_index :records, :owner_type
  end
end
