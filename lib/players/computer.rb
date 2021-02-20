module Players
  class Computer < Player
    WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [6,4,2]]

    def move(board)
      WIN_COMBINATIONS.each do |x|
        #binding.pry
        if (board.cells[x[0]] == board.cells[x[1]]) && (board.cells[x[0]] == "X" || board.cells[x[0]] == "O")
          x[2] + 1
        elsif (board.cells[x[1]] == board.cells[x[2]]) && (board.cells[x[1]] == "X" || board.cells[x[1]] == "O")
          x[0] + 1
        elsif (board.cells[x[0]] == board.cells[x[2]]) && (board.cells[x[0]] == "X" || board.cells[x[0]] == "O")
          x[1] + 1
        elsif board.cells[0] == " "
            1
        elsif board.cells[2] == " "
            3
        elsif board.cells[6] == " "
            7
        elsif board.cells[8] == " "
            9
        else
        end
      end
    end
  end
end
