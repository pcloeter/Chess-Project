require "colorize"
require_relative "cursor"
require_relative "board"
require_relative "queen"
require_relative "piece"
require_relative "slidable"

class Display

    attr_reader :board, :cursor

    def initialize(board)
        @board = board
        @cursor = Cursor.new([0,0], board)
        test_game
    end

    # def render
    #     display
    #     # board[[1, 1]].colorize(:purple)
    #     puts self.board[self.cursor.cursor_pos].colorize(:blue)

    #    # "#{@cursor_pos}".colorize(:purple)
    # end

    def display(arr)
        # if self.board.valid_pos?(pos)
            8.times do |row| 
                puts "---------------------------------------------"
                8.times do |col|
                    if arr.include?([row, col])
                        print ("|" + @board[[row, col]]+ "|").colorize(:green)
                    else
                        print "|" + @board[[row, col]]+ "|"
                    end
                end
                print "\n"
            end
        # else 
        # # make_move
        # end
    end

    def make_move
            self.cursor.get_input
            display(self.cursor.cursor_pos)
    end

    def test_game
        queen = Queen.new([0, 1], board)
        board[[0,1]] = queen.name
        display(queen.moves)
    end

end