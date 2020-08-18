class Array

  def sum
    total = 0
    self.each { |element| total += element if element.is_a(Numeric) }
    total
  end
end

[1, "Hello", 2, false, 3].length # 5

[1, "Hello", 2, false, 3].sum # 6


class Fixnum
  def seconds
    self
  end

  def minutes
    self * 60
  end

  def hours
    self * 60 * 60
  end

  def days
    self * 60 * 60 * 24
  end
end

puts Time.now + 45.minutes
# Nossa classe Fixnum vai multiplicar 45 * 60 dando dessa forma os segundos
puts Time.now + 4.hours

# --------------------------------------------------------- #

class Book
  def initialize(title, author, pages)
    @title = title
    @author = author
    @pages = pages
  end
end

goosebumps = Book.new("Nightmare", "Hugo M.", 1000)
p goosebumps 
