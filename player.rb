class Player
  attr_accessor :name, :lives
  def initialize
    @name = ""
    @lives = 3
  end

  def set_name(name)
    @name = name
  end

  def get_name
    @names
  end
end