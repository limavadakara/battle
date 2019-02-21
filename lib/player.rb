class Player
  INITIAL_HIT_POINTS = 100
  attr_reader :name, :hp

  def initialize(name)
    @name = name
    @hp = INITIAL_HIT_POINTS
  end
end
