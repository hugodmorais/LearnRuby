class Gadget

end

phone = Gadget.new
laptop = Gadget.new
microwave = Gadget.new

puts Gadget.superclass # Object
puts Gadget.superclass.superclass # BasicObject

puts phone # give position on memory
puts laptop # give position on memory
puts microwave # give position on memory

puts phone.class # Gadget
puts laptop.class # Gadget
puts microwave.class # Gadget