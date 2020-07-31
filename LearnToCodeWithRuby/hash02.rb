fruit_prices = Hash.new(0)

fruit_prices[:banana] = 1.05
fruit_prices[:orange] = 0.69
fruit_prices[:kiwi] = 10.99

p fruit_prices[:steak] # 0
p fruit_prices[:celery] # 0
p fruit_prices[:mushrooms] # 0

# -------------------------------------------------------- #

fruit_prices = Hash.new("Not found")

p fruit_prices[:steak] # "Not found"
p fruit_prices[:celery] # "Not found"
p fruit_prices[:mushrooms] # "Not found"

fruit_prices.default = "Whoops! That doesn't exist here!"

p fruit_prices[:steak] # "Whoops! That doesn't exist here!"
p fruit_prices[:celery] # "Whoops! That doesn't exist here!"
p fruit_prices[:mushrooms] # "Whoops! That doesn't exist here!"

# -------------------------------------------------------- #

spice_girls = {scary: "Melanie Brown",
               sporty: "Melanie Chisholm",
               baby: "Emma Bunton",
               ginger: "Geri Halli",
               posh: "Victoria Beckam"}

p spice_girls.to_a #  [[:scary, "Melanie Brown"],
                   #   [:sporty, "Melanie Chisholm"],
                   #   [:baby, "Emma Bunton"],
                   #   [:ginger, "Geri Halli"],
                   #   [:posh, "Victoria Beckam"]]

p spice_girls.to_a.flatten #  [:scary, "Melanie Brown",
                   #   :sporty, "Melanie Chisholm",
                   #   :baby, "Emma Bunton",
                   #   :ginger, "Geri Halli",
                   #   :posh, "Victoria Beckam"]


superheroes = {spiderman: "Peter Parker",
               superman: "Clark Kent",
               batman: "Bruce Wayne"}

p superheroes # {:spiderman => "Peter Parker",
              #  :superman => "Clark Kent",
              #  :batman => "Bruce Wayne"}

removed = superheroes.delete(:spiderman)

p superheroes # {:superman => "Clark Kent",
              #  :batman => "Bruce Wayne"}

p removed # "Peter Parker"

market = {garlic: "3 cloves", tomatoes: "5batches", milk: "10 gallons"}
kitchen = {bread: "2 loaves", yogurt: "20 cans", milk: "100 gallons"}

p market.merge(kitchen) # {:garlic=>"3 cloves", :tomatoes=>"5batches", :milk=>"100 gallons", :bread=>"2 loaves", :yogurt=>"20 cans"}

p kitchen.merge(market) # {:bread=>"2 loaves", :yogurt=>"20 cans", :milk=>"10 gallons", :garlic=>"3 cloves", :tomatoes=>"5batches"}

