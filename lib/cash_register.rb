class CashRegister

    attr_accessor :items, :discount, :total, :last_transaction



    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, amount, quantity=1)
        self.total += amount * quantity
         # items.map {|products| items << products}
        # self.last_transaction = amount * quantity
            quantity.times do
            items << title
            end
        self.last_transaction = amount * quantity
    end 


    
    def apply_discount
        if discount > 0
            discounted_amount = (self.total / 100) * self.discount.to_f 
            new_total = self.total.to_f - discounted_amount
            self.total = new_total
            "After the discount, the total comes to $#{self.total.to_i}."
        else
            "There is no discount to apply."
        end
    end

    def items
        @items
    end

    def void_last_transaction
        self.total = self.total - self.last_transaction
    end
    
end