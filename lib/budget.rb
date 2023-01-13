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
end