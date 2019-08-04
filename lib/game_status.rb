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
  counter = 0
  while counter < WIN_COMBINATIONS.length
    combo = WIN_COMBINATIONS[counter]
    win_index_1 = combo[0]
    win_index_2 = combo[1]
    win_index_3 = combo[3]

    board_val_1 = board[win_index_1]
    board_val_2 = board[win_index_2]
    board_val_3 = board[win_index_3]

    if board_val_1 == "X" and board_val_2 == "X" and board_val_3 == "X"
      return combo
    end
    counter += 1
  end
end

# board = [" ", " ", " ", " ", " ", " ", "X", "X", "X"]
# puts won?(board)

nested_students = [
  ["Mike", "Grade 10", "A average"],
  ["Tim", "Grade 10", "C average"],
  ["Monique", "Grade 11", "B average", "Class President"]
]
 
nested_students.each do |student_array|
  # #inspect returns a human-readable representation
  # of the array
  puts student_array.inspect
end
