class Employee
  attr_reader :name, :age, :salary
  def initialize(info)
    @name = info[:name]
    @age = info[:age].to_i
    @salary = salary_converter(info[:salary])
  end

  def salary_converter(info)
    info.scan(/\d/).join('').to_i
  end

  def give_raise(raise)
    @salary += raise
  end
end