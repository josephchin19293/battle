class Game

  def self.create (player_1, player_2)
   @game = Game.new player_1, player_2
  end

  def self.last_instance
    @game
  end

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @active_player = player_1
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack(player)
    player.receive_damage
  end

  def pinch(player)
    player.receive_damage(5)
  end

  def stab(player)
    player.receive_damage(30)
  end

  def active_player
    @active_player
  end

  def defending_player
    non_active_player
  end

  def switch_turn
    @active_player = non_active_player
  end

  def game_over?
    ! player_1.alive? || ! player_2.alive?
  end

  private
  def non_active_player
    @active_player == player_1 ? player_2 : player_1
  end

end
