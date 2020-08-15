require "./rectangle.rb"
require "./square"
require "./circle"
# OR
require_relative "rectangle.rb"
require_relative "square"
require_relative "circle"

puts Circle.area(10) # 314,159
puts Rectangle.area(13,9) # 117
puts Square.area(7) # 49
