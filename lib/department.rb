require_relative 'expense'

class Department
  attr_reader :name,
              :employees,
              :expensed_items,
              :total_expenses,
              :expenses

  def initialize(name)
    @name = name
    @employees = []
    @expenses = 0

    #comment in for it4
    # @expensed_items = []
    # @total_expenses = 0
  end

  def hire(employee)
    @employees << employee
  end

  #comment out for it 4
  def expense(amount)
    @expenses += amount
  end

  #comment in for it4
  # def expense(spender, cost, item)
  #   new_item = Expense.new(spender, cost, item)
  #   @expensed_items << new_item
  #   @total_expenses += new_item.cost
  # end

  # def expenses_by_employee(employee)
  #   @expensed_items.find_all do |item|
  #     item.spender == employee
  #   end
  # end

end