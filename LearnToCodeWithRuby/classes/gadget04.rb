class Gadget

  attr_accessor :username
  attr_reader :production_number
  attr_writer :password

  def initialize(username, password)
    @username = username
    @password = password
    @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
  end
end

g1 = Gadger.new("rubyfan102", "programming123")

g1.username # "rubyfan102"
g1.production_number # y-956
g1.password = "123456"
g1.password # "123456"

g2 = Gadger.new("misterprogrammer", "bestpassever")
g3 = Gadger.new # error
g3 = Gadger.new("sportsfan100", "topsecret")

