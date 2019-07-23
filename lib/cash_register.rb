class CashRegister

    attr_accessor :items, :discount, :total, :last_transaction
    @@all = []
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []

        CashRegister.all << self
    end

    # Class methods

    def self.all
        @@all
    end

    # Instance methods

    def add_item(title, price, quantity = 1)
        self.total += price * quantity
        quantity.times do
            items.push(title)
        end
        self.last_transaction = price * quantity
    end

    def apply_discount
        if discount == 0
            "There is no discount to apply."
        else 
            self.total = (total - ((total/100).to_f * discount)).to_i
            "After the discount, the total comes to $#{self.total}."
        end
    end

    def void_last_transaction
        self.total -= self.last_transaction
    end
end
