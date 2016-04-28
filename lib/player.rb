class Player

  DEFAULT_HP = 100

  def initialize(name, character, hp = DEFAULT_HP)
    @images = { "tyrion" => "http://vignette1.wikia.nocookie.net/gameofthrones/images/6/61/The_children_Tyrion_with_Bow_S4.png/revision/latest?cb=20140616190514", "cersei" => "http://vignette4.wikia.nocookie.net/gameofthrones/images/c/c6/Cersei-lannister-lena-headey-helen-sloan.jpeg/revision/20120424220203" }
    @image = @images[character]
    @name = name
    @hp = hp
  end

  attr_reader :name, :hp, :image

  def receive_damage(damage = 10)
    @hp -= damage
  end

  def alive?
    @hp > 0
  end
end
