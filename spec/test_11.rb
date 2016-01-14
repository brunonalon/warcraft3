require_relative 'spec_helper'

describe Barracks do

  before :each do
    @barrack = Barracks.new
  end

  describe "#damage" do

    it "Starts with 500 AP" do
      expect(@barrack.health_points).to eq(500) # starts at 500
    end

    it "damage 50% of a Footman AP" do
      @footman = Footman.new
      @barrack.damage(@footman.attack_power)
      expect(@barrack.health_points).to eq(495) # starts at 500 - (10/2)
    end

    it "should be a Bulding" do
      expect(@barrack).to be_an_instance_of(Barracks)
      # But should also be a Bulding
      expect(@barrack).to be_a(Buildings)
    end

  end

end
