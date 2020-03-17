# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #top row
  [3,4,5], #middle row
  [6,7,8], #bottom row
  [0,4,8], #diagonal from zero
  [2,4,6], #diagonal from two
  [0,3,6], #left column
  [1,4,7], #middle column
  [2,5,8] #right column
]

# returns the winning combination or returns false if there is no one
def won?(board)
  
  WIN_COMBINATIONS.each do |win_arr|

    yes_x = win_arr.all? do |i|
      board[i] == 'X'
    end

    if yes_x == true
      return win_arr
    end

    yes_o = win_arr.all? do |i|
      board[i] == 'O'
    end

    if yes_o == true
      return win_arr
    end
  end

  return nil
  
end

# returns true if the whole board is full
def full?(board)
  board.none? {|el| el != "" || el != " "}
end