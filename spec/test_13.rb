require_relative 'spec_helper'

describe Unit do

  before :each do
    @unit = Unit.new(10,5)
  end

  describe "#attack!" do
    it "should not be able to attack a dead unit" do
      enemy_unit = Unit.new(0, 5)
      @unit.attack!(enemy_unit)
      expect(enemy_unit.health_points).to eq(0)
    end

    it "should not decrease you HP after attack a dead Unit" do
      enemy_unit = Unit.new(0, 5)
      @unit.attack!(enemy_unit)
      expect(@unit.health_points).to eq(10)
    end
    it "should not be able to attack if an Unit is dead" do
      enemy_unit = Unit.new(10, 5)
      @unit.damage(10)
      @unit.attack!(enemy_unit)
      expect(@unit.health_points).to eq(0)
    end
  end

end
