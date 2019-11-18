class GameRule

	RESULT_MAP = {
		3 => "Fizz",
		5 => "Buzz"
	}

  def initialize(number)
    @number = number
  end

  def execute(game_number, result)
    return "" unless game_number.modulo(@number).zero?
    RESULT_MAP[@number]
  end

end
