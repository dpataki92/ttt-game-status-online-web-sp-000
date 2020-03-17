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

def won?(board)

  x_won = false
  o_won = false

  WIN_COMBINATIONS.each do |win_arr|

    yes_or_no = win_arr.all? do |i|
      board[i] == 'X'
    end

    if yes_or_no == true
      x_won = true
    end

  end

  if x_won == true || o_won == true
     win_arr
  else
     nil
  end
end
