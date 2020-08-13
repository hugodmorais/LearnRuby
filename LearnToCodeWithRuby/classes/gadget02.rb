class Gadget
  def initialize
    @username = "User #{rand(1..100)}"
    @password = "topsecret"
    @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
  end

  def username
    @username
  end

  def production_number
    @production_number
  end
end

phone = Gadger.new
p phone.username # "User 81"
p phone.production_number # s-782
