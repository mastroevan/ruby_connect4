# board.rb
class Board
  attr_reader :grid

  def initialize
    @grid = Array.new(6) { Array.new(7, nil) }  # A 7x6 grid
  end

  def add_piece(column, symbol)
    row = @grid.rindex { |r| r[column].nil? }  # Find the lowest empty row in the column
    raise 'Column full' unless row             # Raise error if the column is full
    @grid[row][column] = symbol
  end
end