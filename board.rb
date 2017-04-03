
require_relative 'null_piece'


class Board

  attr_accessor :grid, :empty_space

  def initialize
    @grid = Array.new(8) {Array.new(8)}
    @empty_space = NullPiece.new
    @grid = populate_board
  end

  def populate_board
    @grid.map.with_index do |row, i|
      if i.between?(2, 5)
        row.map do |space|
          @empty_space
        end
      else
        row.map do |space|
          Piece.new
        end
      end
    end
  end

  def [](pos)
    x, y = pos
    @grid[x][y]
  end

  def []=(pos, piece)
    x, y = pos
    @grid[x][y] = piece
  end

  def move_piece(start_pos, end_pos)
    if start_pos.instance_of?(NullPiece) #TODO: || invalid_move?(start_pos, end_pos)
      raise "Invalid move"
    else
      self[end_pos] = self[start_pos]
      self[start_pos] = @empty_space
    end
  end

end
