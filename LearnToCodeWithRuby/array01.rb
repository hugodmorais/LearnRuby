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







