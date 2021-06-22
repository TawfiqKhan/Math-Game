class Game
  attr_accessor :game_running, :current_player, :player1, :player2
  
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @game_running = true
    @current_player = player1
  end

  def start 
    # get_player_name
    player1.prompt_name
    player2.prompt_name
    puts "We have two players, #{player1.name} & #{player2.name}"
    puts "Each player has 3 lives, lets begin"
  end

end
