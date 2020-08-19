class Bicycle
  @@maker = "BikeTech" # Variavel de class
  @@count = 0

  def self.description
    "Hi ther, I´m the blueprint for bicycles!"
  end

  def self.count
    @@count
  end

  def maker
    @@maker
  end

  def initialize
    @@count += 1
  end
end

puts Bicycle.description # "Hi ther, I´m the blueprint for bicycles!"
p Bicycle.count # 0

a = Bicycle.new
a.maker # "BikeTech"

# --------------------------------------------------------------------- #

a = Bicycle.new
b = Bicycle.new
c = Bicycle.new

p Bicycle.count # 3