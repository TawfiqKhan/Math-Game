class Input
  attr_reader :user_answer
  def initialize
    @user_answer = gets.chomp.to_i
  end

  def check_answer(answer)
  answer === self.user_answer
  end
end
