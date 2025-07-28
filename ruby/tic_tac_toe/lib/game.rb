require 'colorize'
require_relative 'board'
require_relative 'player'

module TicTacToe
  # TicTacToe::Game --> main controller for the game
  # Handles gmae intialization, player turns, and game loop
  # Determines when the game is won or drawn
  class Game
    def initialize
      puts 'Wanna play some Tic Tac Toe?'
      print 'Player 1, enter your name: '
      @player1 = Player.new(gets.chomp, 'X')
      print 'Player2, enter your name: '
      @player2 = Player.new(gets.chomp, 'O')
      @board = Board.new
      @current_player = @player1
    end

    def play
      loop do
        @board.display
        take_turn
        break if game_over?

        switch_players
      end
    end

    private

    def take_turn
      move = @current_player.get_move(@board)
      @board.update(move, @current_player.symbol)
    end

    def game_over?
      if @board.winner?(@current_player.symbol)
        @board.display
        puts "#{@current_player.name} wins!".green.bold
        true
      elsif @board.full?
        @board.display
        puts "It's a draw!".yellow.bold
        true
      else
        false
      end
    end

    def switch_players
      @current_player = @current_player == @player1 ? @player2 : @player1
    end
  end
end
