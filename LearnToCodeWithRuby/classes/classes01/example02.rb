class Car
  def drive
    "Room! Room!"
  end
end

class Firetruck < Car
  def drive
    super + "Beep! Beep!"
  end
end

ft = Firetruck.new
p ft.drive # "Room! Room! Beep! Beep!"

# .. with arguments

class Car
  def drive
    "Room! Room!"
  end
end

class Firetruck < Car
  def drive(speed)
    super() + "Beep! Beep! #{speed}" # super deve ter parenteses sem argumentos neste caso, de outra forma temos erro
    # apenas "super" e igual a ter "Super(speed), sendo que a class car não espera esse argumento no metodo"
  end
end

ft = Firetruck.new(2000)
p ft.drive # "Room! Room! Beep! Beep! 2000"
