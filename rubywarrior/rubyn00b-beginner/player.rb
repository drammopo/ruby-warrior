class Player
  def play_turn(warrior)
    return warrior.rest! if warrior.feel.empty? && warrior.health < 20
    if warrior.feel.empty?
      warrior.walk!
    else
      warrior.attack!
    end
  end
end
