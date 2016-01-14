require_relative 'spec_helper'

describe Unit do

  before :each do
    @footman = Footman.new
  end

  describe "#dead?" do

    it "should be dead" do
      @footman.damage(60)
      expect(@footman.dead?).to eq(true) 
    end

    it "should be a Unit" do
      expect(@footman).to be_an_instance_of(Footman)
      # But should also be a Unit
      expect(@footman).to be_a(Unit)
    end

  end

end
