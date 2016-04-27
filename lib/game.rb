class Game
	attr_reader :player1, :player2, :current_turn, :awaiting_turn

	def initialize(player1, player2)
		@player1 = player1
		@player2 = player2
		@current_turn = player1
		@awaiting_turn = player2
	end

	def attack(player)
		player.take_damage
		switch_turn
		return nil
	end

	def loser
		@loser = ([@player1, @player2].select { |x| x.dead? }.first)
	end

	private

	def switch_turn
		@awaiting_turn = @current_turn
		@current_turn = (@current_turn == @player1 ? @player2 : player1)
	end
end
