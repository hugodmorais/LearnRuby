class Array

  def sum
    total = 0
    self.each { |element| total += element if element.is_a(Numeric) }
    total
  end
end

[1, "Hello", 2, false, 3].length # 5

[1, "Hello", 2, false, 3].sum # 6
