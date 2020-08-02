def greeter
  puts "I'm inside the greeter method"
  yield
end

phrase = Proc.new do
  puts "Inside the proc"
end

greeter(&phrase) # I'm inside the greeter method
                 # Inside the proc



# ----------------------------------------------- #
hi = Proc.new { puts "Hi there" }

5.times(&hi) # Hi there
             # Hi there
             # Hi there
             # Hi there
             # Hi there