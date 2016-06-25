class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.decimal :price
      t.text :description
      t.string :publisher
      t.integer :number_of_pages
      t.string :ISBN

      t.timestamps
    end
  end
end
