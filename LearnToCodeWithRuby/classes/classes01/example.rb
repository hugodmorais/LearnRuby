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
  def yell
    "Who's the boss!!"
  end

  def introduce
    "My name is #{name}"
  end
end

class Worker < Employee
  def clock_in(time)
    "Starting my shift at #{time}"
  end
end

p Manager.ancestors # [Manager, Employee, Object, Kernel, BasicObject]

bob = Manager.new("Bob", 48)
daniel = Worker.new("Daniel", 35)

p bob.introduce # "Hi, my name is Bob and I am 48 years old"
p daniel.introduce # "Hi, my name is Daniel and I am 35 years old"

puts Manager.superclass # [Manager, Employee, Object, Kernel, BasicObject]

puts bob.is_a?(Manager) # true
puts daniel.is_a?(Manager) # false
puts bob.instance_of?(Manager) # true

p bob.yell # "Who's the boss!!"
p dan.yell # error error error

# -------------------------------------------------------------------------------- #

sally = Manager.new("Sally", 45)
p sally.introduce # "My name is Hugo"