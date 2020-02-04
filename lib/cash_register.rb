class CashRegister 
  attr_accessor :total, :discount, :last_transaction, :item 
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount 
    @last_transaction = last_transaction
    @item = item
  end
  
  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
  end
  
  def apply_discount 
    @total = @total - @total * @discount/100
  end
  
  def void_last_transaction 
    @total -= @last_transaction
  end
end
