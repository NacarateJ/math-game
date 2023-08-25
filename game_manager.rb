require_relative "game"

class GameManager
  def initialize(player1_name, player2_name)
    @game = Game.new(player1_name, player2_name)
  end

  def start_game
    puts "----- NEW GAME -----"
    loop do
      @game.play_round
      break if @game.game_over?
      @game.switch_players
      @game.display_scores_and_lives
    end
    @game.announce_winner
    puts "----- GAME OVER -----"
    puts "Goodbye!"
  end
end