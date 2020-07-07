p [].class # Array

numbers = []

names = %w[Jack Jill John James]
puts names
# Jack
# Jill
# John
# James

fruits = ["Apple", "Orange", "Grape", "Banana"]

p fruits.length # 4
p fruits[0] # "Apple"
p fruits[1] # "Orange"
p fruits[100] # nil !important

# last element
p fruits[-1] # "Banana"
p fruits[-2] # "Grape"

names = ["Tom", "Cameron", "Bob"]
# fetch
p names.fetch(2) # "Bob"
p names.fetch(100) # Error ! Important

p names.fetch(100, "Unkwow") # If not exist, return second param

channels = ["CBS", "FOX", "NBC", "ESPN", "UPN"]
p channels.values_at(4) # ["UPN"]
p channels.values_at(1) # ["FOX"]
p channels.values_at(0, 2, 4) # ["CBS", "NBC", "UPN"]

numbers = [0, 1, 2, 3, 4, 5, 6]
p numbers.slice(3) # 3
p numbers.slice(2, 3) # [2, 3, 4]
p numbers.slice(4..6) # [4, 5, 6]

puts [1, 2, 3].empty? # false
puts [].empty? # true
puts [].length == 0 # true

arr = [1,3,5,7,9,15,21,18,6]
p arr.first # 1
p arr.last # 6
p arr.first(3) # [1,3,5]
p arr.last(2) # [18,6]

def custom_first(arr, num = 0)
  return arr[0] if num == 0

  arr[0, num]
end

p custom_first(arr, 5)

def custom_last(arr, num = 0)
  return arr[-1] if num == 0

  arr[-num..-1]
end

p custom_last(arr)








