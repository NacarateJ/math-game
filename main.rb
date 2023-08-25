require_relative "game_manager"
require_relative "game.rb"
require_relative "math_question.rb"
require_relative "player.rb"

# Create a new instance of the GameManager class and start the game
game_manager = GameManager.new("Player 1", "Player 2")
game_manager.start_game