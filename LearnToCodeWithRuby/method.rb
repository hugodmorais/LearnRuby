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
end