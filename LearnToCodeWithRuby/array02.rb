# [1,2,3,4,5]

[1, 2, 3, 4, 5].each_with_index do |number, index|
  result = number * index
  sum += result
end

# p sum = 40