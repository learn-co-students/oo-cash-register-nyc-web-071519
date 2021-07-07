
class CashRegister
    attr_accessor :discount, :total, :items
    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end


    def add_item(item, price, quantity = 1)
        @sub_total = price * quantity
    
        self.total += @sub_total
          if quantity > 1
          
            while quantity > 0
             @items << item
             quantity -= 1
            end
            elsif
            @items << item
            end #this ends the if (conditional statement)
    end

    def apply_discount
        if @discount > 0
            @discount_total = (self.total * @discount) / 100
        self.total -= @discount_total
        return "After the discount, the total comes to $#{self.total}."
        else
            return "There is no discount to apply."
        end #(wraps up the conditional statement)
    end

    def void_last_transaction
        self.total -= self.total
    end
end