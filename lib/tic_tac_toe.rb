class TicTacToe
  
  def initialize 
    @board = Array.new(9, " ")
  end 
  
  WIN_COMBINATIONS = [
    [0,1,2], # top row 
    [3,4,5], # middle row 
    [6,7,8], # bottom row
    [0,3,6], # first column
    [1,4,7], # second column 
    [2,5,8], # third column 
    [0,4,8], # diagonal 1 
    [2,4,6] # diagonal 2 
    ]
  
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end 
  
  def input_to_index(input)
    input.to_i - 1
  end 
  
  def move(index, token = "X")
    @board[index] = token
  end 
  
  def position_taken?(index)
    if @board[index] == "X" || @board[index] == "O"
      return true 
    else 
      return false 
    end 
  end 
  
  def valid_move?(index)
    index.between?(0,8) && !position_taken?(index)
  end 
  
  def turn_count
    counter = 0 
    @board.each do |position|
      if position == "X" || position == "O" 
        counter += 1 
      end 
    end 
    counter 
  end 
  
  def current_player 
    if turn_count.even?
      "X"
    else 
      "O"
    end 
  end 
  
  def turn 
    puts "Please pick position 1-9."
    input = gets.strip 
    index = input_to_index(input)
    if valid_move?(index)
      token = current_player
      move(index, token)
      display_board
    else 
      "Invalid move. Please try again."
      turn 
    end 
  end
  
  def won?
    WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]
    
    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]
    
      if position_1 == position_2 && position_2 == position_3 && position_taken?(board, win_index_1)
      win_combination
      end 
    end
  end 
  
end 