class Board

  attr_accessor :grid

  def initialize
    @grid = Array.new(8) {Array.new(8)}

  end

  def self.populate_board
    @grid.map do |row|
    end
  end

end
