require './game_rule'
require './default_rule'

class Game

  def initialize(game_number)
    @result = ""
    @game_number = game_number
    @fizz_rule = GameRule.new(3)
    @buzz_rule = GameRule.new(5)
    @default_rule = DefaultRule.new
  end

  def play
    @result << @fizz_rule.execute(@game_number, @result)
    @result << @buzz_rule.execute(@game_number, @result)
    @result << @default_rule.execute(@game_number, @result)
  end

end
