# next
1.next # 2
# par ou impar (impar)
1.odd? # true
2.odd? # false
# par ou impar(par)
1.even? # false
2.even? # true

# Arguments
.between?(MIN, MAX) # MIN and MAX are arguments

# between
3.between?(1, 5) # true
6.between?(1, 5) # false
'cat'.between?('ant', 'dog') # true

# Round
10.5.floor # 10
10.5.ceil # 11
3.14159.round(2) # 3.14

-35.67.abs # distance to 0 is 35.67
35.67.abs # distance to 0 is 35.67

# downto()
10.downto(5) { |i| puts "Countdown: #{i}" }
# Countdown: 10
# Countdown: 9
# Countdown: 8
# Countdown: 7
# Countdown: 6
# Countdown: 5

# upto()
5.upto(10) { |i| puts "Upto: #{i}" }
# Upto: 5
# Upto: 6
# Upto: 7
# Upto: 8
# Upto: 9
# Upto: 10

# step()
1.step(100, 10) { |number| puts number } 

# 11
# 21
# 31
# 41
# 51
# 61
# 71
# 81
# 91

word = "hello"
p word.capitalize # "Hello"
p word # hello

word = "hello"
p word.capitalize! # "Hello" view difference
p word # Hello 

# Include
name = "Snow White"
name.include?("h") # true
name.include?("z") # false
name.downcase.include("s") # true

# Empty? nil? length
"content".empty? # false
"".length # 0
"".empty? # true
"".nil? # true

# .respond_to?
num = 1000

num.respond_to?("next") # true
num.respond_to?(:next) # true
num.respond_to?("length") # false






