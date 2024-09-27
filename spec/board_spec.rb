require_relative '../board'

# spec/board_spec.rb
describe Board do
    it 'initializes a 7x6 empty board' do
      board = Board.new
      expect(board.grid).to eq(Array.new(6) { Array.new(7, nil) })
    end
  end