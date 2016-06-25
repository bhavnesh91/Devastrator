class CreateEmployeeAddresses < ActiveRecord::Migration
  def change
    create_table :employee_addresses do |t|
      t.integer :pincode
      t.string :district
      t.string :state

      t.timestamps null: false
    end
  end
end
