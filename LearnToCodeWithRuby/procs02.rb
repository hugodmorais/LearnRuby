def greeter
  puts "I'm inside the greeter method"
  yield
end

phrase = Proc.new do
  puts "Inside the proc"
end

greeter(&phrase) # I'm inside the greeter method
                 # Inside the proc



# ----------------------------------------------- #
hi = Proc.new { puts "Hi there" }

5.times(&hi) # Hi there
             # Hi there
             # Hi there
             # Hi there
             # Hi there

# ------------------------------------------------ #
p ["1", "2", "3"].map { |number| number.to_i } # [1, 2, 3]

p ["1", "2", "3"].map(&:to_i) # [1, 2, 3]

p [10, 14, 25].map(&:to_s) # ["10", "14", "25"]

# ------------------------------------------------ #
p [1,2,3,4,5].select { |number| number.even? } # [2,4]
p [1,2,3,4,5].select(&:even?) # [2,4]

p [1,2,3,4,5].reject(&:odd?) # [2,4]

# ------------------------------------------------ #

def talk_about(name, &myprc)
  puts "Let me tell you about #{name}."
  myprc.call(name)
end

good_things = Proc.new do |name|
  puts "#{name} is a genius!"
  puts "#{name} is a jolly good fellow!"
end

bad_things = Proc.new do |name|
  puts "#{name} is a dolt!"
  puts "I can't stand #{name}!"
end

talk_about("Hugo", &good_things) # Let me tell you about Hugo.
                                 # Hugo is a genius!
                                 # Hugo is a jolly good fellow!

# ------------------------------------------------- #

square_proc = Proc.new { |number| number ** 2 }
square_lambda = lambda { |number| number ** 2 }

p [1, 2, 3].map(&squares_proc) # [1, 4, 9]
p squares_proc.call(5) # 25

p [1, 2, 3].map(&squares_lambda) # [1, 4, 9]
p squares_lambda.call(5) # 25


some_proc = Proc.new { |name, age| "Name is #{name} and age is #{age}."}
p some_proc.call("Boris", 25) # Name is Boris and age is 25.
p some_proc.call("Boris") # Name is Boris and age is .

some_lambda = lambda { |name, age| "Name is #{name} and age is #{age}."}
p some_lambda.call("Boris", 25) # Name is Boris and age is 25.
p some_lambda.call("Boris") # error error error error error error

# -------------------------------------------------- #

def convert_to_euros(dollars)
  if dollars.is_a?(Numeric)
    dollars * 0.95
  end
end

def convert_to_pesos(dollars)
  if dollars.is_a?(Numeric)
    dollars * 20.67
  end
end

def convert_to_rupees(dollars)
  if dollars.is_a?(Numeric)
    dollars * 68.13
  end
end

p convert_to_euros(1000) # 950.0
p convert_to_pesos(1000) # 20670.0
p convert_to_rupees(1000) # 68130.0

# Efficiency

def convert_to_euros(dollars)
  dollars * 0.95 if dollars.is_a?(Numeric)
end

def convert_to_pesos(dollars)
  dollars * 20.67 if dollars.is_a?(Numeric)
end

def convert_to_rupees(dollars)
  dollars * 68.13 if dollars.is_a?(Numeric)
end

p convert_to_euros(1000) # 950.0
p convert_to_pesos(1000) # 20670.0
p convert_to_rupees(1000) # 68130.0























