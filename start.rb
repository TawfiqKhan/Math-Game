require "./Game.rb"
require "./Player.rb"
require "./Question.rb"
require "./Input.rb"
require "./helpers.rb"

game1 = Game.new(Player.new("Sam"), Player.new("Jon")) 

puts "----Game is Starting----"
game1.start

while game1.game_running do
  puts "Question for #{game1.current_player.name}"
  q = Question.new()
  puts q.question
  a = Input.new()
  compare_answer(game1.current_player, q, a)
  game_status(game1, game1.player1, game1.player2)
end

puts "----Game Over----"
