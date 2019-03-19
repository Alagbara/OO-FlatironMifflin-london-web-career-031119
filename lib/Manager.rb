class Manager
    attr_accessor :name , :department, :age

    @@all = []

  def initialize(name, department, age)
    @name = name
    @department = department
    @age = age
    @@all << self
  end

  def self.all
    @@all
  end

  def employees
    Employee.all.select{|employee|employee.manager_name == self}
  end

  def hire_employee(name, salary)
    Employee.new(name, salary, self)
  end

  def self.all_departments
    Manager.all.map{|department|department.department}
  end

  def self.total_age
   Manager.all.map{|age| age.age}.sum
  
  end

  def self.average_age
    self.total_age.to_f/Manager.all.map{|age| age.age}.length.to_f
  end

end
