class MathQuestion
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @correct_answer = @num1 + @num2
  end

  def generate_question
    "What does #{@num1} plus #{@num2} equal?"
  end

  def correct_answer
    @correct_answer
  end
end
