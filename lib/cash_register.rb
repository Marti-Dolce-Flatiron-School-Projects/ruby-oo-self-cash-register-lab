# frozen_string_literal: true

require 'pry'
# Author: Martinique Dolce
# Course: Flatiron School 2020, November 9 - 20201, April 2021
# Contact: me@martidolce.com | https://modis.martidolce.com
#
# cash_register.rb
class CashRegister
  attr_accessor :items, :discount, :total, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, amount, quantity = 1)
    self.total += amount * quantity
    quantity.times { items << title }
    self.last_transaction = quantity * amount
  end

  def apply_discount
    if discount.zero?
      'There is no discount to apply.'
    else
      self.total = (total * ((100.0 - discount.to_f) / 100)).to_i
      "After the discount, the total comes to $#{self.total}."
    end
  end

  def void_last_transaction
    self.total -= last_transaction
  end
end
