class CreateLists < ActiveRecord::Migration[6.1]
  def change
    create_table :lists do |t|
      t.string :name,       null: false
      t.string :name_kana,  null: false
      t.integer :price,     null: false
      t.decimal :kg_price,  null: false
      t.string :supplier,   null: false
      t.decimal :lot,       null: false

      t.timestamps
    end
  end
end
