class Employee
  attr_accessor :name, :salary , :manager_name

  @@all = []

  def initialize(name, salary, manager_name)
    @name = name
    @salary = salary
    @manager_name = manager_name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.paid_over(salary)
    Employee.all.select{|employee| employee.salary >= salary}
  end

  def self.find_by_department(name)
    Manager.all.find {|department|department.department == name}
  end

  def tax_bracket
    Employee.all.select{|employee|employee.salary >= 1000}
  end

end
