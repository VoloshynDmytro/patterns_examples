class Player
  attr_reader :position, :goals, :abilities
  attr_accessor :printer

  def initialize(printer)
    @printer = printer

    @position = :forward
    @goals = 3
    @abilities = [:high_speed, :scoring_goals]
  end

  def print_stats
    printer.print(position, goals, abilities)
  end
end

# Template method inheritance + Strategy
class StatsPrinter
  def print(position, goals, abilities)
    res = header
    res += content(position, goals, abilities)
  end

  def header
    'Hi!'
  end

  def content(position, goals, abilities)
    raise NotImplementedError
  end
end

# Strategies
class AbilitiesStats < StatsPrinter
  def content(position, goals, abilities)
    abilities.map(&:to_s).join(', ')
  end
end

class BaseInfoStats < StatsPrinter
  def content(position, goals, abilities)
    "Player's position is #{position} and he scored #{goals} goals."
  end
end
