class Method01

  def self.fizzbuzz(number)
    if (number % 3).zero? && (number % 5).zero?
      puts "FizzBuzz"
    elsif (number % 5).zero?
      puts "Buzz"
    elsif (number % 3).zero?
      puts "Fizz"
    else
      puts "Número não é divisivel por 3 ou 5"
    end
  end

  # *************************************************

  number = 5000

  if number > 2500
    puts "Huge number!"
  end

  # equals

  puts "Huge number!" if number > 2500


  # ************************************************

  y = nil 
  p y # nil
  y = 5
  p y # 5
  # --------------------------
  y = nil
  y ||= 5 
  p y # 5

  y = 10
  y ||= 5
  p y # 10

  greeting = "Hello"
  extraction = 0
  letter = greeting[extraction]
  p letter # H
  letter ||= "Not Found" # Only set if letter is nil
  p letter # H


end
