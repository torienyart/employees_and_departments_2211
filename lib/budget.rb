class Budget
  attr_reader :year, :departments

  def initialize(year)
    @year = year
    @departments = []
  end

  def add_department(dep)
    @departments << dep
  end

  #comment out for it 4 (line 14-28)
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

  #comment in for it 4 
  # def expenses_less_than(num)
  #   @departments.find_all do |department|
  #     department.expenses.cost < num
  #   end
  # end
end