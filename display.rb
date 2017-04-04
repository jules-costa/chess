require 'byebug'
require 'colorize'
require_relative 'cursor'
require_relative 'board'

class Display

  def initialize(board)
    @cursor = Cursor.new([0,0], board)
    @board = board
  end

  def render
    display_board = @board.grid.map.with_index do |row, x|
      row.map.with_index do |piece, y|
        if @cursor.cursor_pos == [x, y]
          print piece.to_s.colorize(:background => :blue)
        else
          print piece.to_s
        end
      end

      puts
    end
  end
end
