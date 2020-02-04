class CashRegister 
  attr_accessor :total, :discount, :last_transaction, :items 
  #@item = []
  def initialize(discount = 0)
    @total = 0 
    @discount = discount 
    @last_transaction = {}
    @items = []
  end
  
  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
    quantity.times do 
      @items << title
    end
    @last_transaction[:price] = price
    @last_transaction[:quantity] = quantity
  end
  
  def apply_discount 
    if @discount == 0 
      return "There is no discount to apply."
    end
    @total = @total - @total * @discount/100
    return "After the discount, the total comes to $#{@total}."
  end
  
  def void_last_transaction 
   @total -= @last_transaction[:price] * @last_transaction[:quantity]
   @last_transaction[:quantity].times do 
     @items.pop()
   end
  end
end
