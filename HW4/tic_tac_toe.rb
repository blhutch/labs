require 'pry'

  def game 
  	turn_count = 0
    turn_count += 1
  	 if turn_count % 2 == 0
      puts "It's o's turn!"
        def choose_move(board)
          print_board(board)
          puts " At which number would you like to put your o?"
          gets.chomp.to_i
          do choose_move
            arr.insert(i, "o")
          end
        end
    else
      puts "It's x's turn!"
        def choose_move(board, arr)
          print_board(board)
          puts "At which number would you like to put your x?"
          i = gets.chomp.to_i
          arr.insert(i, "x")
        end
    end

    until game_over?()
      move = choose_move(board)
      board [move - 1] = 'x' 'o'
      turn
    end

    puts "Would you like to play a game of Tic Tac Toe?"
    answer = gets.chomp.downcase

      if answer == 'yes'
        puts "What is your first name?"
        answer = gets.chomp.upcase
        answer = player_1
        puts "Who will you play against? Type first name or computer."
        answer = gets.chomp.upcase
        answer = player_2

      else 
        puts "Maybe later!"

      end 
  end

  def win

    if board (1, "x"; 2, "x"; 3, "x")
    elsif board (4, "x"; 5, "x"; 6, "x")
    elsif board (7, "x"; 8, "x"; 9, "x")
    elsif board (1, "x"; 4, "x"; 7, "x")
    elsif board (2, "x"; 5, "x"; 8, "x")
    elsif board (3, "x"; 6, "x"; 9, "x")
    elsif board (1, "x"; 5, "x"; 9, "x")
    else board (3, "x"; 5, "x"; 7, "x")
      puts "X wins!"
    end

    if board (1, "o"; 2, "o"; 3, "o")
    elsif board (4, "o"; 5, "o"; 6, "o")
    elsif board (7, "o"; 8, "o"; 9, "o")
    elsif board (1, "o"; 4, "o"; 7, "o")
    elsif board (2, "o"; 5, "o"; 8, "o")
    elsif board (3, "o"; 6, "o"; 9, "o")
    elsif board (1, "o"; 5, "o"; 9, "o")
    else board (3, "o"; 5, "o"; 7, "o")
      puts "O wins!"
    end

  end

    def draw

      

  	if choice_x == ([1,2,3], [4,5,6], [7,8,9], [1,4,7], [2,5,8],
      [3,6,9], [3,5,7], [1,5,9])
    elsif choice_o == [1,2,3], [4,5,6], [7,8,9], [1,4,7], [2,5,8],
      [3,6,9], [3,5,7], [1,5,9])
    else
  	  puts "Its a draw!"
    end
  ends

 # Printing grid for tic tac toe.
board = (1..9).to_a

def print_board(board)
  puts "   |   |   " 
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "___|___|___" 
  puts "   |   |   "
  puts " #{board[4]} | #{board[5]} | #{board[6]} "
  puts "___|___|___"
  puts "   |   |   "
  puts " #{board[7]} | #{board[8]} | #{board[9]} "
  puts "   |   |   "
end

 

binding.pry
