class CreateLists < ActiveRecord::Migration[6.1]
  def change
    create_table :lists do |t|
      t.string :name,       null: false
      t.string :name_kana,  null: false
      t.integer :price,     null: false
      t.string :supplier,   null: false
      t.float :lot,         null: false
      t.string :unit,       null: false

      t.timestamps
    end
  end
end
