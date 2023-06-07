class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :title,      null: false
      t.text :body,         null: false
      t.string :genre,      null: false
      t.integer :member_id
      t.integer :list_id,   null: false
      t.integer :quantity,  null: false

      t.timestamps
    end
  end
end
