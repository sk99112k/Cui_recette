class CreateLists < ActiveRecord::Migration[6.1]
  def change
    create_table :lists do |t|
      t.string :name,       null: false
      t.string :name_kana,  null: false
      t.integer :price,     null: false
      t.string :supplier,   null: false
      t.decimal :kg_price,  precision: 8, scale: 2, null: false
      t.decimal :lot,       precision: 8, scale: 3, null: false

      t.timestamps
    end
  end
end
