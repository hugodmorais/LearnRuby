require_relative 'module01'

class Gadget

  attr_accessor :username
  attr_reader :production_number
  attr_writer :password

  def initialize
    @username = "User #{rand(1..100)}"
    @password = "topsecret"
    @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
  end

  def install_app(name)
    app = AppStore.find_app(name)
    @apps << app unless @apps.include?(app)
  end

  def delete_app(name)
    app = apps.find { |installed_app| install_app.name == name }
    apps.delete(app) unless app.nil?
  end
end

g = Gadget.new("Hugo", "password")
p g.apps # []

g.install_app(:Chat)
p g.apps # [#<struct AppStore::App name=:Chat, developer=:facebook, version=:2.0]