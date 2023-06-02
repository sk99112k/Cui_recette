class CreateBookMarks < ActiveRecord::Migration[6.1]
  def change
    create_table :book_marks do |t|
      t.integer :member_id, null: false
      t.integer :recipe_id, null: false

      t.timestamps
    end
  end
end
