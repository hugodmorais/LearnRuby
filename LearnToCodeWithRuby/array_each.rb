candies = ["Sour Patch Kids", "Milky Way", "Airheads"]

candies.each do |candy|
  puts "I love #{candy}"
end

candies.each { |name| puts name.upcase }

numbers = [3, 5, 7]

for num in numbers
  puts num
end

# 3
# 5
# 7

colors = ["Red", "Blue", "Green", "Yellow"]

colors.each_with_index do |color, index|
  puts "Moving on index number #{index}"
end

# Moving on index number 0