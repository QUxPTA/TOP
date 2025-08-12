module Hangman
  class GameState
    # ================================
    # ATTRIBUTES
    # ================================
    attr_accessor :secret_word, :correct_guesses, :incorrect_guesses, :turns_left

    # ================================
    # CLASS-LEVEL VARIABLES (for caching)
    # ================================
    @@wordlist = nil

    # ================================
    # INITIALIZER
    # ================================
    def initialize(secret_word = nil)
      # If no word is provided (new game), pick a random one
      @secret_word = secret_word || choose_random_word
      @correct_guesses = []
      @incorrect_guesses = []
      @turns_left = 6
    end

    # ================================
    # CLASS METHOD: Load and cache wordlist
    # ================================
    def self.load_wordlist
      # TODO: Load file, strip words, filter by length, store in @@wordlist
    end

    # ================================
    # INSTANCE METHOD: Pick a random word from wordlist
    # ================================
    def choose_random_word
      # TODO: Use self.load_wordlist and return a random word
    end

    # ================================
    # INSTANCE METHOD: Display word with underscores
    # ================================
    def display_progress
      # TODO: Return string like "_ r o g r a _ _ i n g"
    end

    # ================================
    # INSTANCE METHOD: Process a guess
    # ================================
    def make_guess(letter)
      # TODO: Update correct/incorrect guesses and turns_left
    end

    # ================================
    # INSTANCE METHOD: Check for win
    # ================================
    def won?
      # TODO: Return true if all letters guessed
    end

    # ================================
    # INSTANCE METHOD: Check for loss
    # ================================
    def lost?
      # TODO: Return true if turns_left == 0
    end
  end
end
