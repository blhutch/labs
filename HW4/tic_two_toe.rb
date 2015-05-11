require 'pry'

def print_board(board)
  puts '   |   |   ' 
  puts ' #{board[0]} | #{board[1]} | #{board[2]} '
  puts '___|___|___'
  puts '   |   |   ' 
  puts ' #{board[3]} | #{board[4]} | #{board[5]} '
  puts '___|___|___'
  puts '   |   |   '
  puts ' #{board[6]} | #{board[7]} | #{board[8]} '
  puts '   |   |   '
end

def take_turn(turn_count, board)
  if turn_count % 2 != 0
    # This is O's turn
    puts "It's o's turn!"
    puts 'At which number would you like to put your o?: '
    number = gets.chomp.to_i
    value = board.include?(number)
    unless value
      puts 'That is not a valid selection. You will lose your turn.'
      return board
    end  
    index = number - 1
    board[index] = 'o'
    return board  
  else
    # This is X's turn
    puts "It's x's turn!"
    puts 'At which number would you like to put your x?: '
    number = gets.chomp.to_i
    value = board.include?(number)
    unless value
      puts 'That is not a valid selection. You will lose your turn.'
      return board
    end  
    index = number - 1
    board[index] = 'x'
    return board
  end  
end

def begin_game
  board = (1..9).to_a
  puts
  puts 'Welcome to Tic-Tac-Toe.'
  puts
  print_board(board)
  puts
  return board
end  

board = begin_game
[0, 1, 2, 3].each_with_index do |n, i| 
  board = take_turn(i, board)
  puts
  print_board(board)
  puts
end

binding.pry
