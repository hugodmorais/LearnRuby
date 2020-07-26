sentence = "Hi, my name is Hugo. Morais!"

p.sentence.split # ["Hi,", "my", "name", "is", "Hugo", "Morais!"]

p.sentence.split(".") # ["Hi, my name is Hugo.", "Morais!"]

"Hello world".each_char { |char| puts char }

name = "Hugo"
p name.split("")

puts "Hello World".count("l") # 3
puts "Hello World".count("lo") # 5 Counts l and o 

fact = "I am very handsome"

p fact.index("I") # 0
p fact.index("e") # 6 show first search value
p fact.index("e", 7) # 17 only searches position 7 above


typo = "GeorgWashington"
p typo.insert(5, "e ") # "George Washington"


sentence = "Thhe aardvark jummped    ovver the fence!"
puts sentence.squeeze # The ardvark jumped over the fence!
puts sentence.squeeze!(" h") # The aardvark jummped ovver the fence!



