require_relative 'math_question'

class Player
  attr_reader :name
  attr_accessor :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def answer_question(answer)
    if answer.to_i == @current_question.correct_answer
      puts "#{@name}: YES! You are correct."
    else
      puts "#{@name}: Seriously? No!"
      @lives -= 1
    end
  end

  def ask_question
    question = current_question.generate_question
    puts "#{name}: #{question}"
    print "> "
    question
  end

  def correct_answers_count
    3 - @lives
  end

  private

  def current_question
    @current_question = MathQuestion.new
  end
end

