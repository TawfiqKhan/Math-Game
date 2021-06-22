def compare_answer (player, question, player_answer)
  if(!player_answer.check_answer(question.answer))
    puts "#{player.name}: Seriously? No! Correct answer is #{question.answer}"
    player.lose_life()
    return false
  else 
    return true
  end
end

def game_status (game1, p1, p2)
  if  (p1.remaining_lives === 0 || p2.remaining_lives === 0)
    game1.game_running = false
    winner = p1.remaining_lives === 0 ? p2 : p1
    puts "#{winner.name} wins with a score of #{winner.remaining_lives}/3"
  else
    puts "p1 #{p1.name}: #{p1.remaining_lives}/3 vs p2 #{p2.name}: #{p2.remaining_lives}/3"
    game1.current_player = game1.current_player === p2 ? p1 : p2
  end

end