class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.belongs_to :author, index: true
      t.string :book_name
      t.integer :price

      t.timestamps null: false
    end
  end
end
