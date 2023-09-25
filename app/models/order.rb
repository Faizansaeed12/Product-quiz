class Order < ApplicationRecord
  has_many :order_items
  has_many :products, through: :order_items
  enum status: { complete: '1', active: '2', canceled: '3' }

  def next_order
    Order.where("orders.id > ?", self.id).first
  end

  def prev_order
    Order.where("orders.id < ?", self.id).last
  end
end
