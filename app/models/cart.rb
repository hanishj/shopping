class Cart < ActiveRecord::Base
  attr_accessible :product_id, :user_id
  
  has_many :products
end
