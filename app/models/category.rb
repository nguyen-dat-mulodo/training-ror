class Category < ApplicationRecord
  has_many :products, :dependent => :destroy

  def self.get_category
    select('cat_id, cat_name, cat_content').order('cat_name asc')
  end

end
