module Purchaseable
  def purchase(item)
    "#{item} has been purchased!"
  end
end

class Bookstore
  include Purchaseable
end


barnes = Bookstore.new
puts barnes.purchase("Atlas") # "Atlas has been purchased!"
