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

end
