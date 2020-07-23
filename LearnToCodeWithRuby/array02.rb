# [1,2,3,4,5]

[1, 2, 3, 4, 5].each_with_index do |number, index|
  result = number * index
  sum += result
end

# p sum = 40

numbers = [1,2,3,4,5]
squares = []
numbers.each { |number| squares << number ** 2 }
p squares
# [1,4,9,16,25]

fahr_temperatures = [105, 73, 40, 18, -2]

celsius_temp = fahr_temperatures.map do |temp|
  minus32 = temp - 32
  minus32 * (5.0 / 9.0)
end
p celsius_temp
# [40.55555555555556, 22.77777777777778, 4.444444444444445, -7.777777777777779, -18.88888888888889]



animals = ["Lion", "Zebra", "Baboon", "Cheetah"]
i = 0
while i < animals.lenght
  puts i
  puts animals[i]
  i += 1
end
# 0
# Lion
# 1
# Zebra
# 2
# Baboon
# 3
# Cheetah

prizes = ["Pyrite", "Pyrite", "Pyrite", "Pyrite", "Gold", "Pyrite", "Pyrite"]
