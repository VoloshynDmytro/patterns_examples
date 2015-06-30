class FakePlayer
  attr_reader :position, :goals, :abilities

  def initialize
    @position = :forward
    @goals = 3
    @abilities = [:high_speed, :scoring_goals]
  end

  def print_info
    "Player's position is #{position} and he scored #{goals} goals."
  end
end
