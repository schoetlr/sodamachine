class SodaMachine
  attr_reader :sodas
  def initialize(sodas = Hash.new(0))
    @sodas = sodas
  end

  def dispense(soda)
    raise "no soda's of this type" if sodas[soda] <= 0
    sodas[soda] -= 1
    soda
  end

end