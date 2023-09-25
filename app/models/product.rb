class Product < ApplicationRecord
  has_many :order_items
  validates :sku, presence: true, uniqueness: true
  
  def self.search(search_str)
    Product.where("name LIKE ?", "%#{search_str}%")
  end
end
