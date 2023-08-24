require_relative "player"

class Game
  def initialize(player1_name, player2_name)
    @player1 = Player.new(player1_name)
    @player2 = Player.new(player2_name)
  end

  def start_game
    puts "----- NEW GAME -----"
    loop do
      play_round
      break if game_over?
      switch_players
      display_scores_and_lives
    end
    announce_winner
    puts "----- GAME OVER -----"
    puts "Goodbye!"
  end

  private

  def play_round
    current_player = get_current_player
    question = MathQuestion.new
    current_player.ask_question(question.question)
    answer = gets.chomp.to_i
    correct = question.check_answer(answer)
    current_player.answer_question(correct)
  end

  def get_current_player
    @current_player ||= @player1
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

# Create a new instance of the Game class and start the game
game = Game.new("Player 1", "Player 2")
game.start_game
