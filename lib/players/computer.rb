module Players
  class Computer < Player
    WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [6,4,2]]
    attr_accessor :chosen_position

    def move(board)
      WIN_COMBINATIONS.each do |x|
        #binding.pry
        if (board.cells[x[0]] == board.cells[x[1]]) && (board.cells[x[0]] == "X" || board.cells[x[0]] == "O")
          @chosen_position = "#{x[2] + 1}"
        elsif (board.cells[x[1]] == board.cells[x[2]]) && (board.cells[x[1]] == "X" || board.cells[x[1]] == "O")
          @chosen_position = "#{x[0] + 1}"
        elsif (board.cells[x[0]] == board.cells[x[2]]) && (board.cells[x[0]] == "X" || board.cells[x[0]] == "O")
          @chosen_position = "#{x[1] + 1}"
        elsif board.cells[0] == " "
          @chosen_position = "1"
        elsif board.cells[2] == " "
          @chosen_position = "3"
        elsif board.cells[6] == " "
          @chosen_position = "7"
        elsif board.cells[8] == " "
          @chosen_position = "9"
        else
        end
        @chosen_position
      end
    end
  end
end
