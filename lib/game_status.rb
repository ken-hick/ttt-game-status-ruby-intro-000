# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2], # top row
  [3, 4, 5], # middle row
  [6, 7, 8], # bottom row
  [0, 3, 6], # first columns
  [1, 4, 7], # middle columns
  [2, 5, 8], # third columns
  [0, 4, 8], # diagonal left to right
  [2, 4, 6] # diagonal right to left
]

def won?(board)
  WIN_COMBINATIONS.each do |combo|
    if board[combo[0]] == "X" && board[combo[1]] == "X" && board[combo[2]] == "X"
      return combo
    end
  elsif board[combo[0]] == "O" && board[combo[1]] == "O" && board[combo[2]] == "O"
    return combo
  end
end
  return false
end
