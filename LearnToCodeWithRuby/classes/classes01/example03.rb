class Product
  @@product_counter = 0

  def self.counter
    @@product_counter
  end

  def initialize
    @@product_counter += 1
  end
end

class Widget < Product
  @@widget_counter = 0

  def self.counter
    @@widget_counter
  end

  def initialize
    super
    @@widget_counter += 1
  end
end

class Thingmajic < Product
  @@thingmajic < Product

  def self.counter
    @@thingmajic_counter
  end

  def initialize
    super
    @@thingmajic += 1
  end
end

a = Widget.new
b = Widget.new

puts Widget.counter # 2
puts Product.counter # 2

c = Thingmajic.new
d = Thingmajic.new
e = Thingmajic.new

puts Thingmajic.counter # 3
puts Product.counter # 5