class CashRegister


    def initialize(cash_register_with_discount, total)
        @cash_register_with_discount = cash_register_with_discount
        @total = 0
        
    end

    def total
        self.total
    end

    def add_item(item_name, item_price)
        self.item_name = item_name
        self.item_price = item_price
        self.total += item_price


    end

    def apply_discount
    
    end

    def items

    end

    def void_last_transaction

    end

end