require_relative "piece"
require_relative "null_piece"
require_relative "cursor"
require_relative "display"

class Board
    attr_reader :grid

    def initialize
        @grid = Array.new(8) { Array.new(8) }
        populate_board
        
    end

    def populate_board
        (0..7).each do |i|
            (0..7).each do |j|
                self[[i, j]] = "Null"#NullPiece.new

            end
        end
        self[[0,0]] = "Piece"
    end

    def move_piece(start_pos, end_pos)
        raise "There's no piece there" if self[start_pos] == NullPiece
        raise "Piece cannot move to end_pos" unless self[end_pos] == "Null"
        self[end_pos] = self[start_pos]
        self[start_pos] = "Null" #"Null"#NullPiece.new
    end

    def []=(pos, val)
        row, col = pos
        @grid[row][col] = val
    end

    def [](pos)
        row, col = pos
        @grid[row][col]
    end

    def valid_pos?(pos)
        (pos[0] >= 0 && pos[0] <= 7) && (pos[1] >= 0 && pos[1] <= 7)
    end

   

end
    