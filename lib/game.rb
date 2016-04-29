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
    @player_images = { "tyrion" => "http://vignette1.wikia.nocookie.net/gameofthrones/images/6/61/The_children_Tyrion_with_Bow_S4.png/revision/latest?cb=20140616190514", "cersei" => "http://vignette4.wikia.nocookie.net/gameofthrones/images/c/c6/Cersei-lannister-lena-headey-helen-sloan.jpeg/revision/20120424220203" }
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
    ! defending_player.alive? || ! active_player.alive?
  end

  private
  def non_active_player
    @active_player == @players.first ? @players.last : @players.first
  end

end
