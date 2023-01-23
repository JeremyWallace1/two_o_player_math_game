class Question
  attr_accessor :question, :answer

  def initialize
    @num1 = rand(2..20)
    @num2 = rand(2..20)
    @which_type = rand(4)
    @question = quest(@which_type, @num1, @num2)
    @answer = ans(@which_type, @num1, @num2)
  end

  def quest(which_type, num1, num2)
    case @which_type
      when 0
        @question = "What does #{@num1} plus #{@num2} equal?"
      when 1
        @question = "What does #{@num1} minus #{@num2} equal?"
      when 2
        @question = "What does #{@num1} multiplied by #{@num2} equal?"
      when 3
        @question = "What does #{@num1} divided by #{@num2} equal?"
      else
        @question = "ERROR"
    end
  end

  def ans(which_type, num1, num2)
    case @which_type
      when 0
        @answer = @num1 + @num2
      when 1
        @answer = @num1 - @num2
      when 2
        @answer = @num1 * @num2
      when 3
        @answer = @num1 / @num2
      else
        @answer = 0
    end
  end
  
end