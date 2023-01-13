require_relative 'expense'

class Department
  attr_reader :name,
              :employees,
              :expensed_items,
              :total_expenses

  def initialize(name)
    @name = name
    @employees = []
    @expensed_items = []
    @total_expenses = 0
  end

  def hire(employee)
    @employees << employee
  end

  def expense(spender, cost, item)
    new_item = Expense.new(spender, cost, item)
    @expensed_items << new_item
    @total_expenses += new_item.cost
  end

end