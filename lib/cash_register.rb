require 'pry'

class CashRegister
    attr_accessor :total, :discount, :items, :last_transaction


    def initialize (discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end


    def add_item (title, price, quant = 1)
        count = quant
        while (count > 0)
          items << title
          count -= 1
        end
        #binding.pry
        self.last_transaction = {:title => title, :price => price, :quantity => quant}
        self.total = self.total + price * quant
        
    end

    def apply_discount
        if (discount == 0)
            return "There is no discount to apply."
        end

        self.total = (self.total - ((self.discount/100.0) * self.total)).to_i
        "After the discount, the total comes to $#{total}."
        #binding.pry
    end

    def void_last_transaction
        count = last_transaction[:quantity]
        count.times do 
            items.pop
        end
        self.total = (self.total) - (last_transaction[:price] * last_transaction[:quantity])

        
    end
end
