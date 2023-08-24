class MathQuestion
  def initialize
    generate_question
  end

  def generate_question
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @question = "What does #{@num1} plus #{@num2} equal?"
    @correct_answer = @num1 + @num2
  end

  def question
    @question
  end

  def check_answer(answer)
    answer.to_i == @correct_answer
  end
end
