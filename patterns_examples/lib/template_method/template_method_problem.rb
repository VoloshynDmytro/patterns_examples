class FakeTeam
  attr_reader :size, :main_size, :leagues

  def initialize(game_type = nil)
    if game_type == :basketball
      @size = 12
      @main_size = 5
      @leagues = [:NBA]
    elsif game_type == :hockey
      @size = 20
      @main_size = 6
      @leagues = [:NHL]
    else
      @size = 15
      @main_size = 11
      @leagues = []
    end
  end

  def substitutions
    @size - @main_size
  end
end
