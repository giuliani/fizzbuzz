#!/usr/bin/ruby
require './game'

game_number = ARGV[0].to_i

game = Game.new(game_number)

puts game.play
