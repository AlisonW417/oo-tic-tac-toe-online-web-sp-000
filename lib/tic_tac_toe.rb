class TicTacToe
  
  def initialize 
    @board = Array.new(9, " ")
  end 
  
  WIN_COMBINATIONS = [
    [1,2,3], # top row 
    [3,4,5], # middle row 
    [6,7,8], # bottom row
    [1,3,6], # first column
    [2,4,7], # second column 
    [3,5,8], # third column 
    [1,4,8], # diagonal 1 
    [3,4,6] # diagonal 2 
    ]
  
end 