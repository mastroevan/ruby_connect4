# spec/board_spec.rb
require_relative '../board'  # Require the file that contains the Board class

describe Board do
  it 'initializes a 7x6 empty board' do
    board = Board.new
    expect(board.grid).to eq(Array.new(6) { Array.new(7, nil) })
  end

  it 'allows a piece to be dropped in a column' do
    board = Board.new
    board.add_piece(1, 'X')
    expect(board.grid[5][1]).to eq('X')  # Expect the piece to drop to the bottom
  end

  it 'raises an error when a column is full' do
    board = Board.new
    6.times { board.add_piece(1, 'X') }  # Fill the column
    expect { board.add_piece(1, 'X') }.to raise_error('Column full')
  end
end