require_relative 'game_state'

module Hangman
  class Game
    def initialize(secret_word = nil)
      @state = GameState.new(secret_word)
    end

    def play
      until @state.won? || @state.lost?
        puts "Word: #{@state.display_progress}"
        puts "Guesses left: #{@state.turns_left}"
        puts "Guessed letters: #{(@state.correct_guesses + @state.incorrect_guesses).join(', ')}"

        print 'Guess a letter: '
        guess = gets.chomp

        # Input Validation: ensures user inputs letters only
        if guess.nil? || guess.empty? || guess.length > 1 || guess.match?(/[^a-zA-Z]/)
          puts 'Invalid input. Please guess a single letter (A-Z).'
          next
        end

        @state.make_guess(guess)
      end

      if @state.won?
        puts "You won! The word was #{@state.secret_word}"
      else
        puts "Game Over! The word was #{@state.secret_word}"
      end
    end
  end
end
