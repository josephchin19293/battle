require_relative './lib/game'

tyrion = Player.new("tyrion")
cersei = Player.new("cersei")

game = Game.new

# p tyrion.attack(cersei)

p game.attack(cersei)
