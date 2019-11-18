class Game

  def initialize(game_number, rules, default_behavior)
    @result = ""
    @game_number = game_number
    @rules = rules
    @default_behavior = default_behavior
  end

  def play
    @rules.each do |rule|
      @result << rule.execute(@game_number)
    end
    @result << @default_behavior.execute(@game_number, @result)
    @result
  end

end
