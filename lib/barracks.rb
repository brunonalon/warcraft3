class Barracks < Buildings

  attr_accessor :gold , :food, :lumber

  def initialize
    @gold = 1000
    @food = 80
    @lumber = 500
    super (500)
  end 
  def can_train_footman?
    gold >= 135 && food >= 2
  end

  def train_footman
    if can_train_footman?
      @gold -= 135
      @food -= 2
      Footman.new
    end
  end 

  def train_peasant
    if can_train_peasant?
      @gold -= 90
      @food -= 5
      Peasant.new
    end
  end 

  def can_train_peasant?
     gold >= 90 && food >= 5
  end 

  def train_siege_engine
    if can_train_siege_engine?
      @gold -= 200
      @lumber -= 60
      @food -= 3
      SiegeEngine.new
    end
  end 
  def can_train_siege_engine?
    gold >= 200 && food >= 3 && lumber >= 60
  end 

end
