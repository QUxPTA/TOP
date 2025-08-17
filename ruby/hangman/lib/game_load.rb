require 'json'

module Hangman
  module GameLoad
    class << self
      # Save the current game state to a JSON file.
      # Overwrites any existing save file
      SAVE_FILE = 'saved_game.json'

      def save_game(state)
        File.open(SAVE_FILE, 'w') do |file|
          file.puts JSON.dump(state_to_hash(state))
        end
      end

      # Load previously saved game from JSON file.
      # Returns a GameState object, or nil if non-existent
      def load_game
        return nil unless File.exist?(SAVE_FILE)

        data = JSON.parse(File.read(SAVE_FILE))
        state_from_hash(data)
      end

      private

      # Convert GameState object into hash for JSON serialization.
      def state_to_hash(state)
        {
          secret_word: state.secret_word,
          correct_guesses: state.correct_guesses,
          incorrect_guesses: state.incorrect_guesses,
          turns_left: state.turns_left
        }
      end

      # Rebuild GameState object from saved hash.
      def state_from_hash(hash)
        state = GameState.new(hash['secret_word'])
        state.correct_guesses = hash['correct_guesses'] || []
        state.incorrect_guesses = hash['incorrect_guesses'] || []
        state.turns_left = hash['turns_left']
        state
      end
    end
  end
end
