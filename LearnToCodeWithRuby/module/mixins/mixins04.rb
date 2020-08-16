module Purchaseable
  def purchase(item)
    "#{item} has been purchased!"
  end
end

class Bookstore
  include Purchaseable

  def purchase(item)
    "You bought a copy of #{item} at the bookstore!"
  end
end

p Bookstore.ancestors # [Bookstore, Purchaseable, Object, Kernel, BasicObject]
# include vs prepend
module Purchaseable
  def purchase(item)
    "#{item} has been purchased!"
  end
end

class Bookstore
  prepend Purchaseable

  def purchase(item)
    "You bought a copy of #{item} at the bookstore!"
  end
end

p Bookstore.ancestors # [Purchaseable, Bookstore, Object, Kernel, BasicObject]