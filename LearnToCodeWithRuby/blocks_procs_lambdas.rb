a = [1,2,3,4,5]
b = [6,7,8,9,10]
c = [11,12,13,14,15]

a.map { |num| num ** 3} # [1, 8, 27, 64, 125]


# ------------------------------------------- #

cudes = Proc.new { |number| number ** 3 }

a = [1,2,3,4,5]
b = [6,7,8,9,10]
c = [11,12,13,14,15]

a_cubes = a.map(&cubes) # [1, 8, 64, 125]
b_cubes = b.map(&cubes) # [216, 343, 512, 729, 1000]
c_cubes = c.map(&cubes) # [1331, 1728, 2197, 2744, 3375]

# ------------------------------------------- #

currencies = [10, 20, 30, 40, 50]

to_euros = Proc.new { |currency| currency * 0.95 }
to_rupees = Proc.new { |currency| currency * 68.13 }
to_pesos = Proc.new { |currency| currency * 20.67 }

p currencies.map(&to_euros)
p currencies.map(&to_rupees)
p currencies.map(&to_pesos)