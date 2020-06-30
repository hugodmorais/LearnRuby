class Method

  def self.teste
    hello_world = "Hello World"
    puts hello_world
  end

  def self.praise_person(name)
    puts "Olá #{name}."
  end

  def self.add_two_numbers(num1, num2)
    puts "OK, I'm solving your math problem!!"
    total = num1 + num2
    return  "Just kidding, I'm a troll!" if total > 20

    total
  end

  def self.return_string
    "What will be the return value here?"
  end

  def self.return_guess

  end

  def self.rate_my_food(food)
    case food
    when "Steak"
      "Pass the steak sauce! That's delicious!"
    when "Sushi"
      "Greate choice! My favorite food!"
    when "Tacos", "Burritos", "Quesadillas"
      "Cheesy and filling! The perfect combination"
    when "Tofu", "Brussel Sprouts"
      "Disgusting! Yuck!"
    else
      "I don't know about that food!"
    end
  end
end