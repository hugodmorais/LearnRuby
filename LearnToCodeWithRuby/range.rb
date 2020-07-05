nums = 1..5
p nums # 1..5
p nums.class # Range

p nums.first # 1
p nums.last # 5

nums = 90...150
p nums.first(4) # [90, 91, 92, 93]

nums = 90...150
p nums.last(4) # [146, 147, 148, 149]

nums = 90..150
p nums.last(4) # [147, 148, 149, 150]
