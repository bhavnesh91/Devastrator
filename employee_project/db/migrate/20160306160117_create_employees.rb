class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees  do |t|
      t.primary_key :Eid, :null => false
      t.string :name

      t.timestamps null: false
    end
        add_index :employees, :Eid, :unique => true

  end
end
