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