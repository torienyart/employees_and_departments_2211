class Budget
  attr_reader :year, :departments

  def initialize(year)
    @year = year
    @departments = []
  end

  def add_department(dep)
    @departments << dep
  end

  def low_expense_departments
    @departments.find_all do |department|
      department.expenses < 500
    end
  end
end