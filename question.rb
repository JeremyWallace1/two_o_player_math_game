require 'colorize'
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
        "What does #{"#{@num1}".red} plus #{"#{@num2}".green} equal?"
      when 1
        "What does #{"#{@num1}".red} minus #{"#{@num2}".green} equal?"
      when 2
        "What does #{"#{@num1}".red} multiplied by #{"#{@num2}".green} equal?"
      when 3
        "What does #{"#{@num1}".red} mod #{"#{@num2}".green} equal?"
      else
        "ERROR".red
    end
  end

  def ans(which_type, num1, num2)
    case @which_type
      when 0
        @num1 + @num2
      when 1
        @num1 - @num2
      when 2
        @num1 * @num2
      when 3
        @num1 % @num2
      else
        0
    end
  end

end