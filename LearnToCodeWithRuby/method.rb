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

  def self.calculate_school_grade(grade)
    case grade
    when 90..100 then "A"
    when 80..89 then "B"
    when 70..79 then "C"
    when 60..69 then "D"
    else "F"
    end
  end

  password = "dominoes"

  if password.include?("a")
    puts "It includes the letter a"
  end

  i = 1

  while i < 10
    puts i
    i += 1
  end

  status = true

  while status
    print "Please enter username: "
    username = gets.chomp.downcase
    print "Please enter password"
    password = gets.chomp.downcase

    if username == "hugo" && password == "password"
      puts "Entry granted"
      status = false
    elsif username =="quit" || password == "quit"
      puts "Goodbye! Better luck next time!"
      status = false
    else
      puts "Incorrect combination, try again!"
    end
  end

  until i > 9
    puts i 
    i += 1
  end
end