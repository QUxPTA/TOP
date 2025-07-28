# initialize(name, symbol):
#   store name and symbol
#
# get_move(board):
#   ask  player for input until valid
#
module TicTacToe
  class Player
    attr_reader :name, :symbol

    def initialize(name, symbol)
      @name = name
      @symbol = symbol
    end

    def get_move(board)
      loop do
        print "#{name} (#{symbol}), enter a position (1-9): "
        input = gets.chomp
        if valid_input_format?(input)
          row, col = convert_to_coordinates(input.to_i)
          return [row, col] if board.valid_move?(row, col)

          puts 'That cell is already taken. Try another one.'
        else
          puts 'Invalid input. Please enter a number between 1 and 9'
        end
      end
    end

    private

    def valid_input_format?(input)
      input.match?(/^[1-9]$/)
    end

    # Converts input 1-9 to 2D coordinates on the board
    # 1 | 2 | 3
    # 4 | 5 | 6
    # 7 | 8 | 9
    def convert_to_coordinates(num)
      row = (num - 1) / 3
      col = (num - 1) % 3
      [row, col]
    end
  end
end
