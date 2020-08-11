require_relative "../lib/turn.rb"

def greeting
  puts "Welcome to Tic Tac Toe!"
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def unser_input
  gets.strip
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, index, index_value = "X")
  board[index] = index_value
end

def valid_move?(board, index)
  if !position_taken?(board, index) && index.between?(0, 8) == true
    true
  else
    false
  end
end

def position_taken?(board, index)
  if board[index] == " "
    false
  elsif board[index] == ""
    false
  elsif board[index] == nil
    false
  else
    true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
