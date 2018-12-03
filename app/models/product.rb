class Product < ApplicationRecord
belongs_to :user
before_save :subtotal
before_save :defbalance

 def subtotal 
  pricetotal = quantity * price
  self.total = pricetotal
 end

 def defbalance 
  balancesum = (price * quantity) - paid 
  self.balance = balancesum
 end	
end