class FakePlayer
  attr_reader :position, :goals, :abilities

  def initialize
    @position = :forward
    @goals = 3
    @abilities = [:high_speed, :scoring_goals]
  end

  # this stuff broke single responsibility principle
  # as well it's violation of open - close principle
  def print_base_info
    # it could be solved by conditions, so we can remove additional methods
    # but more info we need print, more conditions we should add
    # that's why it's a bad approach
    "Player's position is #{position} and he scored #{goals} goals."
  end

  def print_abilities
    abilities.map(&:to_s).join(', ')
  end

  def print_something_else
    #code
  end
end
