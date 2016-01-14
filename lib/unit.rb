class Unit
  
  attr_reader :health_points , :attack_power

  def initialize(health_points, attack_power)
    @health_points = health_points
    @attack_power = attack_power
  end 

  def attack!(enemy)
    attack_value = @attack_power
    attack_value = (attack_value/2).ceil if enemy.is_a?(Buildings)

    enemy.damage(attack_value) unless enemy.dead?
  end
   
  def damage(attack_power)
    @health_points -= attack_power
  end 

  def dead?
    @health_points <= 0
  end
end