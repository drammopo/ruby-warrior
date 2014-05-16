class Player

  def initialize
    @health = 0
  end

  def play_turn(warrior)

    return warrior.walk! if warrior.health < @health && warrior.feel.empty?

    return warrior.rest! if warrior.feel.empty? && warrior.health < 20
    
    warrior.feel.empty? ? warrior.walk! : warrior.attack!

    @health = warrior.health

  end
end
