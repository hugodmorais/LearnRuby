class Array02
  def self.next
    numbers = [1, 2, 3, "Hello", 4, nil, 5, []]

    numbers.each do |num|
      unless num.is_a?(Fixnum)
        next
      else
        puts "The square of #{num} is #{num ** 2}"
      end
    end
  end
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

  i = 0
  while i < prizes.lenght
    current = prizes[i]
    if current == "Gold"
      puts "Yay! Found gold!"
      break
    else
      puts "#{current} is not gold!"
    end
    i += 1
  end
  # Pyrite is not gold!
  # Pyrite is not gold!
  # Pyrite is not gold!
  # Pyrite is not gold!
  # Yay! Found gold!
  def teste
    puts "teste"
  end

  # reverse
  p [1,2,3].reverse # [3,2,1]

  #sort
  def self.sort
    numbers = [5,13,1,-2,8]
    words = ["caterpillar", "Kangaroo", "apple", "zebra"]

    p numbers.sort # [-2, 1, 5, 8, 13]
    p words.sort # ["Kangaroo", "apple", "caterpillar", "zebra"]
    # Maiusculas são ordenadas antes das minusculas
  end

  # concat
  p [1,2,3] + [4,5] # [1,2,3,4,5]
  p [1,2,3].concat([4,5]) # [1,2,3,4,5]

  a = [1,2,3]
  b = [4,5,6]

  def custom_concat(arr1, arr2)
    arr2.each { |elem| arr1 << elem }
    arr1
  end    

  # max and min
  stock_prices = [5,9,8,6,55,88,77,44,1,2,888]
  p stock_prices.max # 888
  p stock_prices.min # 1

  fruits = ["apple", "banana", "watermelon"]
  p fruits.max # watermelon
  p fruits.min # apple

  # include?
  p "Hello".include?("l") # true

  # index and find_index
  colors = ["Red", "Blue", "Green", "Red"]

  p colors.index("Green") # 2
  p colors.index("Blue") # 1

  p colors.find_index("Green") # 2
  p colors.find_index("Blue") # 1

  p colors.index("Orange") # nil
  p colors.find_index("Orange") # nil

  # select
  stock_prices = [5,9,8,6,55,88,77,44,1,2,888]

  matches = stock_prices.select do |number|
    number >= 75
  end

  p matches # [88, 77, 888]

  # reject
  stock_prices = [5,9,8,6,55,88,77,44,1,2,888]

  matches = stock_prices.reject do |number|
    number >= 75
  end

  p matches # [5,9,8,6,55,44,1,2]

  # partition
  foods = ["Steak" "Vegetables", "Steak Burgues", "Kale", "Tofu"]

  foods.partition { |food| food.include?("Steak") } # [["Steak", "Steak Burguer"], ["Vegetables", "Tofu", "Kale"]]

  good, bad = foods.partition { |food| food.include?("Steak") }
  p good # ["Steak", "Steak Burguer"]
  p bad # ["Vegetables", "Tofu", "Kale"]
end
