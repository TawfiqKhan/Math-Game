class Player
  attr_accessor :name
  def initialize(name)
    @name = name
    @remaining_lives = 3
  end
  def lose_life
    @remaining_lives -= 1
  end

end