class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.float :orderno
      t.string :status
      

      t.timestamps
    end
  end
end
