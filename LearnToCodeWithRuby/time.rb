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

# ------------------------------------------------ #

start_at = Time.new(2016, 1, 1)
p start_at # 2016-01-01 00:00:00 +0000

p start_at + 60 # # 2016-01-01 00:01:00 +0000
p start_at + 180 # # 2016-01-01 00:03:00 +0000
p start_at + (60 * 3) # # 2016-01-01 00:03:00 +0000
p start_at + (60 * 60) # # 2016-01-01 01:00:00 +0000
p start_at + (60 * 60 * 24) # # 2016-01-02 00:00:00 +0000

def find_day_of_year_by_number(number)
  current_date = Time.new(2016, 1, 1)
  one_day = 60 * 60 * 24
  until current_date.yday == number
    current_date += one_day
  end
  current_date
end

find_day_of_year_by_number(150) # 2016-05-29 00:00:00 +0000


