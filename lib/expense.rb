class Expense

  attr_reader :spender, :cost, :item

  def initialize(spender, cost, item)
    @spender = spender
    @cost = cost
    @item = item
  end
end