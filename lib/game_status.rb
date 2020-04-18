# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?(board)
  WIN_COMBINATIONS.detect do |i|
    i.all?{|subset| board[subset] == "X"} || i.all?{|subset| board[subset] == "O"}
  end
end

def full?(board)
  board.all? do |i|
    i == "X" || i == "O"
  end
end

def draw?(board)

end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  full?(board) || won?(board)
end

def winner(board)
  if won?(board)
    if (board.select {|index| index == "X"}).count >= (board.select {|index| index == "O"}).count
      "X"
    elsif (board.select {|index| index == "O"}).count >= (board.select {|index| index == "X"}).count
      "O"
    else
      nil
    end
  end
end
