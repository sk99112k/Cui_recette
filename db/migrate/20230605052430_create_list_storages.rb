class CreateListStorages < ActiveRecord::Migration[6.1]
  def change
    create_table :list_storages do |t|
      t.integer :recipe_id, null: false
      t.integer :list_id, null: false

      t.timestamps
    end
  end
end
