
class Carro
  def initialize
    @litros = 35
    @distancia = 600
  end

  def self.consumo_medio
    @litros / @distancia * 100
  end
end