class AddRecipeIdToChecks < ActiveRecord::Migration[6.1]
  def change
    add_column :checks, :recipe_id, :integer
  end
end
