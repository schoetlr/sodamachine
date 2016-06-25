require 'minitest/autorun'
require './sodamachine.rb'

describe SodaMachine do
  before do
    @soda_machine = SodaMachine.new "Coke" => 100, "Sprite" => 200
  end

  describe "#dispense" do 
    it "returns the  name of the soda" do
      @soda_machine.dispense("Coke").must_equal "Coke"
    end

    it "decrements the inventory of the soda by 1" do
      @soda_machine.dispense("Coke")
      @soda_machine.sodas["Coke"].must_equal 99
    end
  end
end
  
