class Bishop < Piece
    include Slidable

    attr_accessor :moves, :board

    def initialize(start_pos = [0, 2], board)
        @name = ♗
        @deltas = [[1, 1], [-1, 1], [-1, -1], [1, -1]]
        @board = board
        @moves = possible_moves(start_pos, deltas, board)
    end

    

end
