class RenameCatIdtoProduct < ActiveRecord::Migration[5.0]
  def change
    rename_column :products, :cat_id, :category_id
  end
end
