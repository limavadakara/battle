class Player
  INITIAL_HIT_POINTS = 100
  attr_reader :name
  attr_accessor :hp

  def initialize(name)
    @name = name
    @hp = INITIAL_HIT_POINTS
  end

  def be_attacked
    @hp -= 10
  end

end
