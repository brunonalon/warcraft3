class SiegeEngine < Unit
  def initialize
    super(400,50)
  end 

  def attack!(enemy)
    attack_value = @attack_power
    attack_value *= 2 if enemy.is_a?(Buildings)
    attack_value = 0 if enemy.is_a?(Unit) && !enemy.is_a?(SiegeEngine)

    enemy.damage(attack_value) unless enemy.dead?
  end
end 