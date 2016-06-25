class CreateBookinfos < ActiveRecord::Migration
  def change
    create_table :bookinfos do |t|
    	t.belongs_to :book, index: true
      t.integer :pages
      t.string :language

      t.timestamps null: false
    end
  end
end
