require './player.rb'
require './question.rb'

class Game

  def initialize
    puts "Initializing game"
    @p1 = Player.new("Player 1")
    @p2 = Player.new("Player 2") 
  end

  def game_over?
    @p1.lost || @p2.lost
  end

  def play
    current_player = @p1
    while !game_over? do
      turn(current_player)
      if current_player == @p1
        current_player = @p2
      else 
        current_player = @p1
      end

    end
        puts "#{winner.name} wins with a score of #{winner.lives}"
    puts "----- GAME OVER ----- \nGoodbye"
  end

  def winner 
    return @p1 if @p2.lost
    return @p2 if @p1.lost
  end

  def turn(current_player) 
    puts "----- NEW TURN -----"
    q1 = Question.new
    puts "#{current_player.name}: #{q1.ask()}"
    response = gets.chomp.to_i
    if q1.check_answer(response)
      puts "#{current_player.name}: YES! You are correct."
    else 
      puts "#{current_player.name}: Seriously? No!"
      current_player.lose_life
    end
    puts "P1: #{@p1.lives}/3 vs P2: #{@p2.lives}/3"
  end
end