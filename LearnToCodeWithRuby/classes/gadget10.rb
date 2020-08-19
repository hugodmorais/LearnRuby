class Bicycle
  @@maker = "BikeTech" # Variavel de class
  @@count = 0

  def self.description
    "Hi ther, I´m the blueprint for bicycles!"
  end
end

puts Bicycle.description # "Hi ther, I´m the blueprint for bicycles!"