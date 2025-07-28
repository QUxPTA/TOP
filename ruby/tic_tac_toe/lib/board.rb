module TicTacToe
  # Manages the grid, handles move validation, and checks game state
  class Board
    def initialize
      @grid = Array.new(3) { Array.new(3, ' ') }
    end

    def display
      puts "\n"
      @grid.each_with_index do |row, i|
        puts row.map.with_index { |cell, j| cell.empty? ? ' ' : cell }.join(' | ')
        puts '--+---+--' unless i == 2
      end
      puts "\n"
    end

    def update(move, symbol)
      row, col = move
      @grid[row][col] = symbol
    end

    def full?
      @grid.all? { |row| row.none? { |cell| cell == ' ' } }
    end

    def winner?(symbol)
      # Rows, columns, diagonals
      lines = @grid +                                   # rows
              @grid.transpose +                         # colmuns
              [[@grid[0][0], @grid[1][1], @grid[2][2]], # diagonal
               [@grid[0][2], @grid[1][1], @grid[2][0]]] # anti-diagonal
      lines.any? { |line| line.all? { |cell| cell == symbol } }
    end

    def valid_move?(row, col)
      row.between?(0, 2) && col.between?(0, 2) && @grid[row][col] == ' '
    end
  end
end
