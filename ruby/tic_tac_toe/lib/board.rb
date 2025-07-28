require 'colorize'

module TicTacToe
  # Manages the grid, handles move validation, and checks game state
  class Board
    def initialize
      @grid = Array.new(3) { Array.new(3, ' ') }
    end

    def display
      # Show Board and guide board side by side
      symbol_rows = @grid.each_with_index.map do |row, _i|
        row.map do |cell|
          case cell
          when 'X' then 'X'.red
          when 'O' then 'O'.blue
          else ' '
          end
        end
      end
      guide_rows = (1..9).each_slice(3).map do |row|
        row.map { |n| n.to_s.light_black }
      end

      3.times do |i|
        left = symbol_rows[i].join(' | ')
        right = guide_rows[i].join(' | ')
        puts " #{left}      #{right}"
        puts ' --+---+--      --+---+--' unless i == 2
      end
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
