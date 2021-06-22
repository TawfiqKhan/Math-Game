class Player
  attr_accessor :name, :remaining_lives
  def initialize(name)
    @name = name
    @remaining_lives = 3
  end

  def lose_life
    @remaining_lives -= 1
  end

  def prompt_name
    puts "Enter your name: "
    self.name = gets.chomp.to_s
  end
end