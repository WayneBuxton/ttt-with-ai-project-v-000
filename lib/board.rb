require "pry"
class Board

attr_accessor :cells

  def initialize
    @cells = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end

  def reset!
     @cells = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
     #binding.pry
  end

  def display
    puts " #{@cells[0]} | #{@cells[1]} | #{@cells[2]} "
    puts "-----------"
    puts " #{@cells[3]} | #{@cells[4]} | #{@cells[5]} "
    puts "-----------"
    puts " #{@cells[6]} | #{@cells[7]} | #{@cells[8]} "
  end

  def position(user_input)
      @cells[user_input.to_i - 1]
  end

  def full?
    @cells.all? { |token| token == "X" || token == "O"}
  end

  def turn_count
    counter = 0
    @cells.each do |position|
     if position == "X" || position == "O"
       counter += 1
    end
   end
   counter
  end

  def taken?(user_input)
    if position(user_input) == "X" || position(user_input) == "O"
      true
    else
      false
    end
  end

  def valid_move?(user_input)
    index = user_input.to_i - 1
    !taken?(user_input) && index.between?(0,8)
  end

  def update(user_input, player)
    @cells[user_input.to_i - 1] = player.token
  end
end
