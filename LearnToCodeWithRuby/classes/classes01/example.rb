class Employee
  attr_accessor :age
  attr_reader :name

  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    "Hi, my name is #{name} and I am #{age} years old"
  end
end

hugo = Employee.new("Hugo", 35)
puts hugo.introduce # "Hi, my name is Hugo and I am 35 years old"

class Manager < Employee

end

class Worker < Employee

end

bob = Manager.new("Bob", 48)
daniel = Worker.new("Daniel", 35)

p bob # "Hi, my name is Bob and I am 48 years old"
p daniel # "Hi, my name is Daniel and I am 35 years old"