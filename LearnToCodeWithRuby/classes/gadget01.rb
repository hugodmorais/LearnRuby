class Gadget
  def initialize
    @username = "User #{rand(1..100)}"
    @password = "topsecret"
    @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
  end
end

phone = Gadget.new
puts phone.inspect
p phone
p phone.instance_variables # [:@username, :@password, :@production_number]
laptop = Gadget.new