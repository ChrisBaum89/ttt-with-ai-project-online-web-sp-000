module Players
  class Computer < Player
    WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [6,4,2]]
    attr_accessor :chosen_position

    def move(board)
      WIN_COMBINATIONS.each do |x|
        pos_1_val = board.cells[x[0]]
        pos_2_val = board.cells[x[1]]
        pos_3_val = board.cells[x[2]]
        if pos_1_val == pos_2_val && (pos_1_val == "X" || pos_1_val == "O")
          return x[2]
        elsif pos_2_val == pos_3_val && (pos_2_val == "X" || pos_2_val == "O")
          return x[0]
        elsif pos_1_val == pos_3_val && (pos_1_val == "X" || pos_1_val == "O")
          return x[1]
        else
          return rand(1..9)
        end
      end


    # def move(board)
    #   rand(1..9)
    # end
    end
  end
end
