require_relative 'spec_helper'

describe Barracks do

  before :each do
    @barracks = Barracks.new
  end

  describe "#train_siege_engine" do

    it "costs 200 gold" do
      @barracks.train_siege_engine
      expect(@barracks.gold).to eq(800) # starts at 1000
    end

    it "costs 3 food" do
      @barracks.train_siege_engine
      expect(@barracks.food).to eq(77) # starts at 80
    end

    it "costs 60 lumber" do
      @barracks.train_siege_engine
      expect(@barracks.lumber).to eq(440) # starts at 500
    end

    it "produces a siege_engine unit" do
      siege_engine = @barracks.train_siege_engine
      expect(siege_engine).to be_an_instance_of(SiegeEngine)
    end

  end

end


describe SiegeEngine do

  before :each do
    @siege_engine = SiegeEngine.new
  end
  describe "#attack!" do

    it "should damage the Barracks 2 times Siege Engine attack_power" do
      @barracks = Barracks.new
      @siege_engine.attack!(@barracks)
      expect(@barracks.health_points).to eq(400) # starts at 500 - (50 * 2) = 400
    end
  end

end