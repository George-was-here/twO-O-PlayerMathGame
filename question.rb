class Question
  
  def initialize()
    @num1 = rand(1...10)
    @num2 = rand(1...10)
    @answer = @num1 + @num2
  end

  def ask()
    "What does #{@num1} plus #{@num2} equal"
  end

  def check_answer(response)
    response == @answer 
  end

end