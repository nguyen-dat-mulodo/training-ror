class Product < ApplicationRecord
  # self.default_scope :order => 'title'
  has_attached_file :image

  has_many :line_items
  belongs_to :category, foreign_key: :category_id
  before_destroy :line_item_referencing_product

  #validates for products
  validates :title, :description, :presence => true
  validates :price, :numericality => {greater_than_or_equal_to: 0.01}
  validates :title, :uniqueness => true
  validates_attachment :image, presence: true,
                       content_type: { content_type: "image/jpg" }
  # :format => {
  #     :with => /\.(gif|jpg|png)/i,
  #     :message => "must be GIF, JPG or PNG"
  # }

  private
    def line_item_referencing_product
      if line_items.empty?
        true
      else
        errors.add(:base, 'line items present')
        false
      end
    end

end
