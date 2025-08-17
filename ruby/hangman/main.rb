require_relative 'lib/game'
require_relative 'lib/game_load'
require_relative 'lib/game_state'

puts 'Load saved game? (y/n)'.colorize(:teal)
choice = gets.chomp.downcase

if choice == 'y'
  state = Hangman::GameLoad.load_game
  if state
    Hangman::Game.new(state).play
  else
    puts 'No saved game found!'.colorize(:red)
  end
else
  Hangman::Game.new.play
end
