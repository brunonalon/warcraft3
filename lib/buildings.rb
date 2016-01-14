class Buildings
  
  attr_reader :health_points 

  def initialize(health_points)
    @health_points = health_points
    
  end 

  def damage(attack_power)
    @health_points -= attack_power
  end 

 def dead?
    @health_points <= 0
  end
end