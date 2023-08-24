require_relative "game.rb"
require_relative "math_question.rb"
require_relative "player.rb"



player = Player.new("Player 1")
player.answer_question(gets.chomp.to_i)