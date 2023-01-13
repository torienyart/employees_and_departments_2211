require_relative 'department'

class Expense

  attr_reader :spender, :cost, :item_name

  def initialize(spender, cost, item_name)
    @spender = spender
    @cost = cost
    @item_name = item_name
  end
end