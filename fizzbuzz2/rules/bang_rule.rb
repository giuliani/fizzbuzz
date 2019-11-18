class BangRule < GameRule

	CONTAINABLE = 7.to_s
	RETURN_VALUE = "Bang"

  def execute(game_number)
    return "" unless game_number.to_s.include?(CONTAINABLE)
    RETURN_VALUE
  end

end
