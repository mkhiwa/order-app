class Product < ApplicationRecord
	belongs_to :user

  validates :price, :presence => true      # Don't forget add DB validations, too :)
  validates :quantity, :presence => true

def total
    (price * quantity)
end

def balance 
 (total - paid)
end
	
end
