json.extract! order, :id, :customer_id, :item, :order_total, :giftee_email, :child_name, :shipping_date, :payment_info, :billing_address, :shipping_address, :created_at, :updated_at
json.url order_url(order, format: :json)
