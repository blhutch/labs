require 'pry'

def print_board(board)
  puts "   |   |   "
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "___|___|___"
  puts "   |   |   "
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "___|___|___"
  puts "   |   |   "
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
  puts "   |   |   "
end

WINS = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7],
       [2, 5, 8], [0, 4, 8], [2, 4, 6]]

def win?(board)
  WINS.any? do |x, y, z|
    board[x] == board [y] && board[y] == board[z]
  end
end

def draw?(board)
  board.all? { |x| x.is_a? String }
end

def game_over?(board)
  win?(board) || draw?(board)
end

def person_o_take_turn(turn_count, board)
  puts
  puts 'It's o's turn!'
  puts 'At which number would you like to put your o?: '
  number = gets.chomp.to_i
  value = board.include?(number)
  unless value
    puts
    puts 'That is not a valid selection. You will lose your turn.'
    turn_count += 1
    return [board, turn_count]
  end  
  index = number - 1
  board[index] = 'o'
  turn_count += 1
  return [board, turn_count]
end

def person_x_take_turn(turn_count, board)
  puts
  puts 'It's x's turn!'
  puts 'At which number would you like to put your x?: '
  number = gets.chomp.to_i
  value = board.include?(number)
  unless value
    puts
    puts 'That is not a valid selection. You will lose your turn.'
    return [board, turn_count]
  end  
  index = number - 1
  board[index] = 'x'
  return [board, turn_count]
end

def computer_x_take_turn(turn_count, board)
  turn_array = []
  board.each do |n|
    if n.instance_of?(Fixnum)
      turn_array << n
    end  
  end
  move = turn_array.sample
  index = move - 1
  board[index] = 'x'
  turn_count += 1
  return [board, turn_count]  
end

def computer_o_take_turn(turn_count, board)
  turn_array = []
  board.each do |n|
    if n.instance_of?(Fixnum)
      turn_array << n
    end  
  end
  move = turn_array.sample
  index = move - 1
  board[index] = 'o'
  turn_count += 1
  return [board, turn_count]
end

def begin_game(board)
  board = (1..9).to_a
  puts
  puts 'You are playing Tic_Tac_Toe against the computer.
  Would you like to go first? (answer yes  no)'
  answer = gets.chomp
    if yes
      puts 'You are player_x.'
    else
      puts 'You are player_o.''
  puts
  print_board(board)
  puts
  board
end 

board = begin_game(board)
turn_count = 0
  until win?(board) || draw?(board)
    take_turn(turn_count, board)
    turn_count +=1
    puts
    print_board(board)
    puts
  end

if win?(board) == true
  puts 'We have a winner!'
end

if draw?(board) == true
  puts 'We have a draw!'
end

binding.pry
