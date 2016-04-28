class Player

  DEFAULT_HP = 100

  def initialize(name, hp = DEFAULT_HP)
    @name = name
    @hp = hp
  end

  attr_reader :name, :hp

  def receive_damage
    @hp -= 10
  end

  def alive?
    @hp > 0
  end
end
