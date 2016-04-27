class Player
	attr_reader :name, :hp
	DEFAULT_HP = 100
	DEFAULT_ATTACK = 10
	def initialize(name, hp=DEFAULT_HP)
		@name = name
		@hp = hp
	end

	def attack(player)
		player.take_damage
	end

	def take_damage
		@hp -= DEFAULT_ATTACK
	end
end
