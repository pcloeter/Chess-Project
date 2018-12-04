require_relative "board"
module Slidable

    def possible_moves(start_pos, deltas, board)
        destinations = []
        deltas.each do |path|
            destination = [start_pos[0]+path[0], start_pos[1]+path[1]]
           
            until !board.valid_pos?(destination) 
                destinations << destination
                destination = [destination[0]+path[0], destination[1]+path[1]]
            end
        end
        destinations
    end
end