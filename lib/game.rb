class Game
	attr_reader :player1, :player2, :current_turn

	def initialize(player1, player2)
		@player1 = player1
		@player2 = player2
		@current_turn = player1.name
	end

	def attack(player)
		player.take_damage
		switch_turn
	end

	private

	def switch_turn
		@current_turn = (@current_turn == @player1.name ? @player2.name : player1.name)

	end

end
