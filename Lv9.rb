class Player
  def play_turn(warrior)
    if warrior.feel.enemy?
      warrior.attack!
      @attack = true
    elsif @attack and !@flg
      warrior.shoot!
      @attack = false
      @flg = true
    elsif warrior.feel.captive?
      warrior.rescue!
    elsif warrior.feel.wall?
      warrior.pivot!
    elsif warrior.health < 20 and warrior.health == @health
      warrior.rest!
    else
      warrior.walk!
    end
    @health = warrior.health
  end
end
  
