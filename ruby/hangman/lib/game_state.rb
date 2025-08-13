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
      # Load file, strip words, filter by length, store in @@wordlist
      # 1. Return cached list if already loaded
      return @@wordlist unless @@wordlist.nil?

      # 2. Read the file lines into an array
      file_path = 'google-10000-english-no-swears.txt'
      words = File.readlines(file_path, chomp: true)

      # 3. Filter by length (5 - 12) characters
      filtered_words = words.select do |word|
        word.length.between?(5, 12)
      end

      # 4. Store in cache
      @@wordlist = filtered_words

      # 5. Return wordlist
      @@wordlist
    end

    # ================================
    # INSTANCE METHOD: Pick a random word from wordlist
    # ================================
    def choose_random_word
      # Use self.load_wordlist and return a random word
      wordlist = GameState.load_wordlist
      wordlist.sample
    end

    # ================================
    # INSTANCE METHOD: Display word with underscores
    # ================================
    def display_progress
      # Return string like "_ r o g r a _ _ i n g"
      display = []
      secret_word.each_char do |letter|
        display << if @correct_guesses.include?(letter)
                     letter
                   else
                     '-'
                   end
      end
      display.join(' ')
    end

    # ================================
    # INSTANCE METHOD: Process a guess
    # ================================
    def make_guess(letter)
      # Update correct/incorrect guesses and turns_left
      letter = letter.downcase
      return 'Already guessed' if @correct_guesses.include?(letter) || @incorrect_guesses.include?(letter)

      if secret_word.include?(letter)
        @correct_guesses << letter
      else
        @incorrect_guesses << letter
        @turns_left -= 1
      end
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
