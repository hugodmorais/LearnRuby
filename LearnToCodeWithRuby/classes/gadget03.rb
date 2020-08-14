class Gadget

  attr_accessor :username
  attr_reader :production_number
  attr_writer :password

  def initialize
    @username = "User #{rand(1..100)}"
    @password = "topsecret"
    @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
  end
end

phone = Gadger.new
p phone.username # "User 81"
p phone.production_number # s-782
phone.username = "Hugo Morais"
p phone.username # "Hugo Morais"

# # setter methods

# phone = Gadget.new
# p phone.username # "User 38"
# phone.username=("rubyman")
# p phone.username # "rubyman"
