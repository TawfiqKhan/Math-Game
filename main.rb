require "./Player.rb"
require "./Question.rb"
require "./Input.rb"

player1 = Player.new("Player1")

class Main
  attr_accessor :player1, :player2
  def initialize
    @player1 = Player.new("Tawfiq")
    @player2 = Player.new("Ariana")
  end
end

game1 = Main.new()

puts "----Game is Starting----"

puts "We have two players, #{game1.player1.name} & #{game1.player2.name}"
puts "Each player has 3 lives, lets begin"
q1 = Question.new()
puts q1.question
a1 = Input.new()
# puts a1.check_answer(q1.answer) ? "Correct" : "Incorrect"

def game_status (p1, p2, question, user_answer)
  if(!user_answer.check_answer(question.answer))
    puts "Current life #{p1.remaining_lives}"
    p1.lose_life()
    puts "You only have #{p1.remaining_lives} live remaining"
  else 
    puts "p1: #{p1.remaining_lives}/3 vs p1: #{p2.remaining_lives}/3"
  end
end

game_status(game1.player1, game1.player2, q1, a1)
# if(!a1.check_answer(q1.answer))
#   puts "Current life #{game1.player1.remaining_lives}"
#   game1.player1.lose_life()
#   puts "You only have #{game1.player1.remaining_lives} live remaining"
# else 
#   puts "p1: #{game1.player1.remaining_lives}/3 vs p1: #{game1.player2.remaining_lives}/3"
# end
