p Time.new # 2020-08-04 20:24:08 +0000

p Time.new(2015) # 2015-01-01 00:00:00 +0000

p Time.new(2015, 5) # 2015-05-01 00:00:00 +0000

p  today = Time.now # 2020-08-04 20:32:07 +0000

p today.year # 2020
p today.month # 8
p today.day # 4
p today.hour # 20
p today.min # 32
p today.sec # 7

p today.yday # 217 give day number of year
p today.wday # 2 day number of week

birthday = Time.new(2020, 8, 4)
p birthday.monday? # false


