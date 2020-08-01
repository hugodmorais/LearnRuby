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


# ----------------------------------------------- #
ages = [10, 60, 92, 30, 43, 30]

is_old = Proc.new do |age|
  age > 60
end

p ages.select(&is_old) # [60, 92]

# ----------------------------------------------- #
def pass_control_on_condition
  puts "Inside the method"
  if block_given?
    yield
  end
  puts "Back inside the method"
end

pass_control_on_condition # Inside the method / Back inside the method

pass_control_on_condition { "block given bla bla"} # Inside the method / block given bla bla / Back inside the method

# ------------------------------------------------ #

def speak_the_truth
  yield "Boris" if block_given?
end

speak_the_truth { |name| puts "#{name} is brilliant!" } # Boris is brilliant
speak_the_truth { |name| puts "#{name} is incredible!" }

