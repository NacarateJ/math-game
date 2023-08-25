require_relative "player"
require_relative "math_question"

class Game
  def initialize(player1_name, player2_name)
    @player1 = Player.new(player1_name)
    @player2 = Player.new(player2_name)
    @current_player = @player1
  end

  def play_round
    question = MathQuestion.new
    @current_player.ask_question(question.question)
    answer = gets.chomp.to_i
    correct = question.check_answer(answer)
    @current_player.answer_question(correct)
  end

  def switch_players
    @current_player = (@current_player == @player1) ? @player2 : @player1
  end

  def game_over?
    @player1.lives == 0 || @player2.lives == 0
  end

  def display_scores_and_lives
    puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
    puts "----- NEW TURN -----"
  end

  def announce_winner
    winner = (@player1.lives == 0) ? @player2 : @player1
    puts "#{winner.name} wins with a score of #{winner.lives}/3"
  end
end