class Gadget
  def initialize
    @username = "User #{rand(1..100)}"
    @password = "topsecret"
    @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
  end

  def info
    "Gadget #{@production_number} has the username #{@username}."
  end
end

phone = Gadget.new
puts phone.info # Gadget y-419 has the username User 33.


phone = Gadget.new
puts phone.inspect
p phone
p phone.instance_variables # [:@username, :@password, :@production_number]
laptop = Gadget.new
p laptop.instance_variables # [:@username, :@password, :@production_number]