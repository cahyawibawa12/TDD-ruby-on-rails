class AddCategoryIdToFood < ActiveRecord::Migration[7.0]
  def change
    add_column :foods, :category_id, :integer
  end
end
