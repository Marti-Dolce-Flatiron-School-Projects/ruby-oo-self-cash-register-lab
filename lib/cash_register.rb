# frozen_string_literal: true

require 'pry'
# Author: Martinique Dolce
# Course: Flatiron School 2020, November 9 - 20201, April 2021
# Contact: me@martidolce.com | https://modis.martidolce.com
#
# cash_register.rb
class CashRegister
  attr_accessor :total, :discount, :last_transaction_amount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    if quantity > 1
      i = 0
      while i < quantity
        @items << title
        i += 1
      end
    else
      @items << title
    end
    @total += price * quantity
    @last_transaction_amount = @total
    @total
  end

  def apply_discount
    return 'There is no discount to apply.' if @discount.zero?

    @total -= @total * @discount / 100
    "After the discount, the total comes to $#{self.total}."
  end

  def void_last_transaction
    #self.items.delete_at(self.items.index(self.last_transaction[0]))

    @total -= @last_transaction_amount

  end
end
