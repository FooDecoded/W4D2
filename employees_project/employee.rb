class Employee
  attr_reader :salary
  def initialize(name, title, salary, boss)
    @name  = name
    @title = title
    @salary = salary
    @boss = boss
  end

  def bonus(multiplier)
    @salary * multiplier
  end
end

class Manager < Employee
  attr_reader :employees

  def initialize(name, title, salary, boss)
    @employees = []
    super
  end
  def get_salaries 
    @employees.sum(0) { |emp| emp.salary }
  end
  def bonus(multiplier)
    acc = get_salaries
    @employees.each do |emp|
      if emp.class == Manager
        acc += emp.get_salaries
      end
    end
    acc * multiplier
  end

  
end

david = Employee.new("David", "TA", 10000, "Darren")
shawna = Employee.new("Shawna", "TA", 12000, "Darren")
darren = Manager.new("Darren", "TA Manager", 78000, "Ned")
ned = Manager.new("Ned", "Founder", 1000000, nil)

darren.employees << david
darren.employees << shawna
ned.employees << darren

puts ned.bonus(5)
puts darren.bonus(4)
puts david.bonus(3)
