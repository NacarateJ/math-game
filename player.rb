require_relative "math_question"

class Player
  attr_reader :name
  attr_accessor :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def ask_question(question)
    puts "#{name}: #{question}"
    print "> "
  end

  def answer_question(correct)
    if correct
      puts "#{name}: YES! You are correct."
    else
      puts "#{name}: Seriously? No!"
      lose_life
    end
  end

  private

  def lose_life
    @lives -= 1
  end
end

