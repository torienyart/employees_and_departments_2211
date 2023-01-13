class Budget
  attr_reader :year, :departments

  def initialize(year)
    @year = year
    @departments = []
  end

  def add_department(dep)
    @departments << dep
  end

  def expenses_less_than(num)
    @departments.find_all do |department|
      department.expenses < num
    end
  end

  def salaries
    salaries_hash = {}
    @departments.each do |department|
      department.employees.each do |employee|
        salaries_hash[employee.name] = employee.salary
      end
    end
    salaries_hash
  end
end