nfl_roster = {"Tom Brady" => "New England Patriots",
              "Tony Romo" => "Dallas Cowboys",
              "Rob Gronkowski" => "New England Patriots"}

person = {:name => "Boris",
          :age => 25,
          :handsome => true,
          :languages => ["Ruby", "Python", "JS"]
        }
# or
person = {name: 'Boris',
  age: 25,
  handsome: true,
  languages: ['Ruby', 'Python', 'JS']
}

p person[:name] # "Boris"
p person[:handsome] # true
p person[:languages] # ["Ruby", "Python", "JS"]

menu = { burguer: 3.99, taco: 5.96, chips: 0.5 }

p menu.fetch(:burguer) # 3.99
p menu.fetch(:salad, nil) # nil
p menu.fecth(:salad, "Not Found") # "not Found"

menu = { burguer: 3.99, taco: 5.96, chips: 0.50}

menu[:sandwich] = 8.99
p menu # { burguer: 3.99, taco: 5.96, chips: 0.50, sandwich: 8.99 }
