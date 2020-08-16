module Purchaseable
  def purchase
    "purchased!"
  end
end

class Bookstore
  extend Purchaseable
end

module Purchaseable
  extend Purchaseable
end

a = Bookstore.new
a.purchase # error

Bookstore.purchase # "purchase!"