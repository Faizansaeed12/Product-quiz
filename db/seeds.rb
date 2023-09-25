# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# 1:  Product.all

#2: order = Order.select('orders.*, COUNT(order_items.id) AS order_items_count').joins(:order_items).group('orders.id') 

#3: month_start = Date.today.beginning_of_month

#3: start  = Order.where(status: ['complete','active'], created_at: month_start..Date.today )

#4: s = Product.select('products.*, SUM(order_items.quantity) AS product_sales').joins(:order_items).group('products.id').order(product_sales: :desc).limit(5)

# s.map {|product| product.product_sales}

#5: c = Product.select('products.*, SUM(order_items.quantity) AS product_sales').joins(:order_items).group('products.id').order(product_sales: :asc).limit(5) 

#  c.map {|product| product.product_sales}

#6: list = Product.left_joins(:order_items).where(order_items: {id: nil})

#7: I have to ROLLBACK Product model to add category id in it because Category model is 

#not added in Schema so all my created Products will gonna be delete 

#Query for it. s = Category.select('categories.*', COUNT(products.id) AS product_id_count).joins(:products).group('categories.id')
 
#8: def next_order
    #Order.where("orders.id > ?", self.id).first
  #end

  #def prev_order
    #Order.where("orders.id < ?", self.id).last
  #end

  # order = Order.find(4)
    #order.next_order

  #9:def self.search(search_str)
    #Product.where("name LIKE ?", "%#{search_str}%")
  #end
  
  #Product.search('Bed')

