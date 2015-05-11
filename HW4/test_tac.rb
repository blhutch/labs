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

def win?(board)
  win_array = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
  win_array.each do |pos|
    check_array = []
    pos.each do |n|
      check_array << board[n]
    end
    if check_array.uniq.size == 1
      return check_array.uniq
    end 
  end
  if board.any? {|v| v.instance_of?(Fixnum)}
    return []
  else
    puts
    puts 'This game resulted in a tie.'
    puts
    exit
  end
end  

def human_o_take_turn(turn_count, board)
  puts
  puts "It's o's turn!"
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

def human_x_take_turn(turn_count, board)
  puts
  puts "It's x's turn!"
  puts 'At which number would you like to put your x?: '
  number = gets.chomp.to_i
  value = board.include?(number)
  unless value
    puts
    puts 'That is not a valid selection. You will lose your turn.'
    turn_count += 1
    return [board, turn_count]
  end  
  index = number - 1
  board[index] = 'x'
  turn_count += 1
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

def begin_game
  board = (1..9).to_a
  puts
  puts 'Welcome to Tic-Tac-Toe.'
  puts
  puts 'Please choose a game type: (first player will be x)'
  puts '[1] Human vs. Human  |  [2] Computer vs. Computer  |  [3] Human vs. Computer  |  [4] Computer vs. Human'
  answer = gets.chomp
  while !(['1', '2', '3', '4'].include?(answer)) do
    puts 'Please enter a valid selection'
    puts '[1] Human vs. Human  |  [2] Computer vs. Computer  |  [3] Human vs. Computer  |  [4] Computer vs. Human'
    answer = gets.chomp
  end
  print_board(board)
  puts
  return [board, answer]  
end

def play_game
  game_details = begin_game

  if game_details.last == '1'
    win = []
    turn_count = 0
    board = game_details.first
    while win.empty? do
      board, turn_count = human_x_take_turn(turn_count, board)
      print_board(board)
      win = win?(board)
      if !(win.empty?)
        break
      end  
      board, turn_count = human_o_take_turn(turn_count, board)
      print_board(board)
      win = win?(board)
    end
    puts
    puts "#{win.first} Wins!"
    puts  
  elsif game_details.last == '2'
    win = []
    turn_count = 0
    board = game_details.first
    while win.empty? do
      board, turn_count = computer_x_take_turn(turn_count, board)
      print_board(board)
      puts
      win = win?(board)
      if !(win.empty?)
        break
      end  
      board, turn_count = computer_o_take_turn(turn_count, board)
      print_board(board)
      puts
      win = win?(board)
    end
    puts
    puts "#{win.first} Wins!"
    puts
  elsif game_details.last == '3'
    win = []
    turn_count = 0
    board = game_details.first
    while win.empty? do
      board, turn_count = human_x_take_turn(turn_count, board)
      print_board(board)
      win = win?(board)
      if !(win.empty?)
        break
      end  
      board, turn_count = computer_o_take_turn(turn_count, board)
      print_board(board)
      puts
      win = win?(board)
    end
    puts
    puts "#{win.first} Wins!"
    puts
  else
    win = []
    turn_count = 0
    board = game_details.first
    while win.empty? do
      board, turn_count = computer_x_take_turn(turn_count, board)
      print_board(board)
      puts
      win = win?(board)
      if !(win.empty?)
        break
      end  
      board, turn_count = human_o_take_turn(turn_count, board)
      print_board(board)
      win = win?(board)
    end
    puts
    puts "#{win.first} Wins!"
    puts  
  end
end

play_game 

binding.pry





