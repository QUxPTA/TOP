require_relative 'game_state'
require 'colorize'

module Hangman
  class Game
    def initialize(secret_word = nil)
      # initialize game state with random or provided secret_word
      @state = GameState.new(secret_word)
    end

    def play
      until @state.won? || @state.lost?
        # Draw Hangman
        draw_hangman(@state.turns_left)

        puts "Word: #{@state.display_progress}".colorize(:cyan)
        puts "Guesses left: #{@state.turns_left}".colorize(:light_blue)
        puts "Guessed letters: #{(@state.correct_guesses + @state.incorrect_guesses).join(', ')}".colorize(:light_yellow)

        print 'Guess a letter: '.colorize(:light_green)
        guess = gets.chomp

        # Input Validation: ensures user inputs letters only
        if guess.nil? || guess.empty? || guess.length > 1 || guess.match?(/[^a-zA-Z]/)
          puts 'Invalid input. Please guess a single letter (A-Z).'.colorize(:red)
          next
        end

        @state.make_guess(guess)
      end

      if @state.won?
        puts "You won! The word was #{@state.secret_word}".colorize(:green)
      else
        puts "Game Over! The word was #{@state.secret_word}".colorize(:red)
      end
    end

    private

    # Draw ASCII Hangman (based on turns_left)
    def draw_hangman(turns_left)
      stages = [
        "
         -----
         |   |
         |   O
         |  /|\\
         |  / \\
         |
        =======
        ",
        "
         -----
         |   |
         |   O
         |  /|\\
         |  /
         |
        =======
        ",
        "
         -----
         |   |
         |   O
         |  /|\\
         |
         |
        =======
        ",
        "
         -----
         |   |
         |   O
         |  /|
         |
         |
        =======
        ",
        "
         -----
         |   |
         |   O
         |   |
         |
         |
        =======
        ",
        "
         -----
         |   |
         |   O
         |
         |
         |
        =======
        ",
        "
         -----
         |   |
         |
         |
         |
         |
        =======
        "
      ]
      puts stages[6 - turns_left].colorize(:cyan)
    end
  end
end
