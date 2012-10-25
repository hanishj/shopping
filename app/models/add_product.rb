class AddProduct < ActiveRecord::Base
  attr_accessible :details, :name, :price
end
