class Player
	attr_reader :name, :hp
	DEFAULT_HP = 100
	DEFAULT_ATTACK = 10
	def initialize(name, hp=DEFAULT_HP)
		@name = name
		@hp = hp
	end

	def take_damage
		@hp -= DEFAULT_ATTACK
	end

	def dead?
		@hp <= 0
	end
end
