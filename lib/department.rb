class Department
  attr_reader :name, :employees, :expenses
  def initialize(name)
    @name = name
    @employees = []
    @expenses = 0
  end

  def hire(employee)
    @employees << employee
  end

  def expense(spender, cost, item)
    Expense.new(spender, cost, item)

  end

end