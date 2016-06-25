class CreateEmployeePersonals < ActiveRecord::Migration
  def change
    create_table :employee_personals do |t|
      t.date :dob
      t.string :sex
      t.integer :age

      t.timestamps null: false
    end
  end
end
