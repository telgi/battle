class Game

  attr_reader :player_1, :player_2, :turn, :not_turn, :double_damage

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @turn = @player_1
    @not_turn = @player_2
  end

  def self.instance
    @game
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def attack(player)
    if player.double_damage?
      player.receive_damage(5)
      @double_damage = true
      puts "Critical Hit!! Take some!!"
    else
      player.receive_damage
      @double_damage = false
    end
    @turn, @not_turn = @not_turn, @turn
  end

end
