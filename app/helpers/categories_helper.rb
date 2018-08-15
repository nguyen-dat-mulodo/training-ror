module CategoriesHelper
  def get_name id
    test=Category.where(cat_id: id).pluck(:cat_name)
    test[0]
  end
end
