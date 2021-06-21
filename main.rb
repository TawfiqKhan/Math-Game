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
a1.check_answer(q1.answer)
