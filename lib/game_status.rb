# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5], #Horizotol combinations
  [6,7,8],
  [0,3,6],
  [1,4,7], #Vertical combinations
  [2,5,8],
  [0,4,8],
  [2,4,6]
]
def won?(board)
  if board == []
    return nil
  end
  for each combo in WIN_COMBINATIONS
    win_index_1 = combo[0]
    win_index_2 = combo[1]
    win_index_3 = combo[3]

    board_val_1 = board[win_index_1]
    board_val_2 = board[win_index_2]
    board_val_3 = board[win_index_3]

    if board_val_1 == "X" and board_val_2 == "X" and board_val_3 == "X"
      return combo
    end
  end
end

board = [" ", " ", " ", " ", " ", " ", "X", "X", "X"]
puts WIN_COMBINATIONS[1][2]
