require_relative "slidable"

class Queen < Piece
    include Slidable

    attr_accessor :moves, :board, :deltas

    def initialize(start_pos, board)
        @name = "♔"
        @deltas = [[1, 0], [-1, 0], [0, 1], [0 ,-1], [1, 1], [-1, 1], [-1, -1], [1, -1]]
        @board = board
        @moves = possible_moves(start_pos, deltas, board)
    end

    

end
