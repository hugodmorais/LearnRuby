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

class Supermarket
  include Purchaseable

end

class CornerMart < Supermarket
end

p Bookstore.ancestors # [Bookstore, Purchaseable, Object, Kernel, BasicObject]
bn = Bookstore.new
p bn.purchase("1984") # "You bought a copy of 1994 at the bookstore!"
# se o método existe em Bookstore ele é retornado, não irá procurar o método no ancestor, no caso "Purchaseable"

p CornerMart.ancestors # [Bookstore, Supermarket, Purchaseable, Object, Kernel, BasicObject]
qc = CornerMart.new
p qc.purchase("Slim Jeans") # "Slim Jeans has been purchased!"

