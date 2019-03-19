require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
m1 =Manager.new("moses" , "clothing", 21)
m2 =Manager.new("Adelola" , "shoe", 30)
m3 =Manager.new("osofa" , "training", 33)
m4 =Manager.new("Aje" , "research", 40)

e1 = Employee.new("olowo" , 2500, m1)
e2 = Employee.new("mauyon" , 3000 , m2)
e3 = Employee.new("buki" , 500, m3)
e4 = Employee.new("bose" , 1500 , m4)
e5 = Employee.new("jubril" , 800 ,m1)
e6 = Employee.new("oly" , 200 ,m3)
e7 = Employee.new("mufutau" , 1900 ,m4)

binding.pry
puts "done"
