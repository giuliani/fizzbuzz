#!/usr/bin/ruby
class Game
	RESULT_MAP = {
		3 => "Fizz",
		5 => "Buzz"
	}
	def initialize(game_number)
    @result = ""
    @game_number = game_number
  end

	def play
		RESULT_MAP.each do |divisible, value|
			@result << value if @game_number.modulo(divisible).zero?
		end
		@result = @game_number if @result.empty?
		@result
	end
end

game_number = ARGV[0].to_i
game = Game.new(game_number)

puts game.play
