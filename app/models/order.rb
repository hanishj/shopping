class Order < ActiveRecord::Base
  attr_accessible :product_id, :quantity, :total_price, :user_id
end
