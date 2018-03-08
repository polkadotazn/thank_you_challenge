class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.string :item
      t.float :order_total
      t.string :giftee_email
      t.string :child_name
      t.date :shipping_date
      t.string :payment_info
      t.string :billing_address
      t.string :shipping_address
      t.boolean :sent_thank_you

      t.timestamps
    end
  end
end
