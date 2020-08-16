class ConvenienceStore
  include Enumerable
  attr_reader :snacks

  def initialize
    @snacks = []
  end

  def add_snack(snack)
    snacks << snack
  end

  def each 
    snacks.each do |snack|
      yield snack
    end
  end
end

bodega = ConvenienceStore.new
bodega.add_snack("Doritos")
bodega.add_snack("Ruffles")
bodega.add_snack("Fritos")
p.bodega.snacks