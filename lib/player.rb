class Player

  DEFAULT_HP = 100
  BASIC_ATTACK = 10

  attr_accessor :hp
  attr_reader :name

  def initialize(name, hp = DEFAULT_HP)
    @name = name
    @hp = hp
  end

  def receive_damage(damage_multiplier = 1)
    @hp -= (rand(0..20) * damage_multiplier)
  end

  def double_damage?
    random_hit = rand(1..3)
    random_hit == 2
  end

end
