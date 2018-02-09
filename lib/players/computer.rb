require "pry"
module Players
  class Computer < Player

      def block(board)
        Game::WIN_COMBINATIONS.detect do |win_index|
          win_index.count {|cell| cell == " "} == 2
        end

     end

       def move(board)

        if board.turn_count == 0 return "1"
        if board.turn_count == 2 && board.taken?(2 || 3) return "4"
        if board.turn_count == 2 && board.taken?(4 || 5 || 7) return "2"
        if board.turn_count == 2 && board.taken?(6) return "5"
        if board.turn_count == 2 && board.taken?(8 || 9) return "3"
        if board.turn_count == 4 && board.cells[0,3] == "X" && !board.taken?(7) return "7"
        if board.turn_count == 4 && board.cells[0,3] == "X" && !board.taken?(5) return "5"
        if board.turn_count == 4 && board.cells[0,1] == "X" && !board.taken?(3) return "3"
        if board.turn_count == 4 && board.cells[0,1] == "X" && !board.taken?(5) return "5"
        if board.turn_count == 4 && board.cells[0,1] == "X" && !board.taken?(7) return "7"
        if board.turn_count == 4 && board.cells[0,4] == "X" && !board.taken?(9) return "9"
        if board.turn_count == 4 && board.cells[0,4] == "X" && !board.taken?(3) return "3"
        if board.turn_count == 4 && board.cells[0,2] == "X" && !board.taken?(2) return "2"
        if board.turn_count == 4 && board.cells[0,2] == "X" && !board.taken?(8) return "5"
        if board.turn_count == 4 && board.cells[0,2] == "X" && !board.taken?(9) return "7"
        if board.turn_count == 6 && board.cells[0,3,4] == "X" && !board.taken?(6) return "6"
        if board.turn_count == 6 && board.cells[0,3,4] == "X" && !board.taken?(9) return "9"
        if board.turn_count == 6 && board.cells[0,1,4] == "X" && !board.taken?(8)
          "8"
        if board.turn_count == 6 && board.cells[0,1,4] == "X" && !board.taken?(9)
          "9"
        if board.turn_count == 6 && board.cells[0,1,6] == "X" && !board.taken?(4)
          "4"
        if board.turn_count == 6 && board.cells[0,1,6] == "X" && !board.taken?(6)
          "6"
        if board.turn_count == 6 && board.cells[0,2,4] == "X" && !board.taken?(2)
          "2"
        if board.turn_count == 6 && board.cells[0,2,4] == "X" && !board.taken?(7)
          "7"
        if board.turn_count == 6 && board.cells[0,2,4] == "X" && !board.taken?(9)
          "9"
        if board.turn_count == 6 && board.cells[0,2,4] == "X" && !board.taken?(2)
          "2"
        if board.turn_count == 6 && board.cells[0,2,6] == "X" && !board.taken?(4)
          "4"
        if board.turn_count == 6 && board.cells[0,2,6] == "X" && !board.taken?(5)
          "5"
        if board.turn_count == 8
          rand(8..9).to_s
        end
      end

  end
end
