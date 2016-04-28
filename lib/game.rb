class Game

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

  def active_player
    @active_player
  end

  def defending_player
    non_active_player
  end

  def switch_turn
    @active_player = non_active_player
  end

  private
  def non_active_player
    @active_player == player_1 ? player_2 : player_1
  end

end