require 'colorize'
require_relative 'cursor'
require_relative 'board'

class Display

  def initialize
    @cursor = Cursor.new([0,0], board)
  end

  def render #TODO: make this work. what's the board?!?!
    Board.grid.map.with_index do |row, idx|
      row.map.with_index do |space, i|
        space.colorize(:color => :white, :background => :black) if (idx + i).even?
      end
    end
  end

end
