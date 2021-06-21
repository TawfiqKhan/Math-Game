class Input
  attr_reader :user_answer
  def initialize
    @user_answer = gets.chomp.to_i
  end

  def check_answer(answer)
    if(answer === self.user_answer)
      puts "Correct!"
    else
      puts "InCorrect :(, correct answer is #{answer}"
    end
    
  end
end

# i = Input.new()

# answer = i.user_input.to_i
# if(answer === 5)
#   puts "right answer is #{answer}"
# else
#   puts "You got is wrong"
# end