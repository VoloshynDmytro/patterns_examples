# abstract class
class Team
  attr_reader :size, :main_size, :leagues

  # template method
  def initialize
    @size = size
    @main_size = main_size
    @leagues = leagues
  end

  def substitutions
    @size - @main_size
  end

  # hooks
  def size
    15
  end

  def main_size
    11
  end

  def leagues
    []
  end

  def founded
    "#{founded_at} by #{founder}"
  end

  def founded_at
    fail 'You must define team founded date'
  end

  def founder
    fail 'You must define team founder'
  end
end

# inherited subclass
class HockeyTeam < Team
  # hooks
  def size
    20
  end

  def main_size
    6
  end

  def leagues
    [:NHL]
  end

  def founded_at
    Date.new(1986, 2, 10)
  end

  def founder
    'Mike Peterson'
  end
end

# inherited subclass
class BasketballTeam < Team
  # hooks
  def size
    12
  end

  def main_size
    5
  end

  def leagues
    [:NBA]
  end

  def founded_at
    Date.new(1967, 5, 8)
  end

  def founder
    'Jonh Doe'
  end
end
