a = [1,2,3]
b = a.dup

p a.object == b.object # false

def sum(*numbers)
  sum = 0
  numbers.each { |num| sum += num }
  sum
end

p sum(1,2,4) # 7

#---------------------------------------------#
[1,3,5,7,2].any? do |number|
  number.even?
end

#---------------------------------------------#
words = ["dictionary", "refrigerator", "platypus", "microwave"]

p words.select { |word| word.length > 8 } # ["dictionary", "refrigerator", "microwave"]

p words.find { |word| word.length > 8 } # "dictionary"

lottery = [4, 8, 15, 16, 23, 42]

p lottery.find do |number|
  number.odd? # [4, 8, 15, 16, 23, 42]
end 

numbers = [1, 2, 3, 2, 7, 7, 8, 9, 1]
 
numbers.uniq # [1, 2, 3, 7, 8, 9]
numbers.uniq! # permanently modified matrix

p [1, nil, 2, 3, nil, false, 4].compact # remove nil [1, 2, 3, 4]


#-----------------------------------------------#
[10, 20, 30, 40].reduce(0) do |previous, current|
  puts "The previous value is #{previous}"
  puts "The current value is #{current}"
  previous + current
end

names = ["Bo", "Moe", "Joe"]
registrations = [true, false, false]

p names.zip(registrations) # [["Bo", true], ["Moe", false], ["Joe", false]]

