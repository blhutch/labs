require 'minitest/autorun'

require './board'
require './human_player'
require './computer_player'

class HumanPlayerTest < MiniTest::Test
  def test_human_player_move
    @board = Board.new
    a.insert(4, 'x')
    assert_includes Board, 'x'
  end

  def test_human_player_win
    @board = Board.new
    a.insert(3, 'x')
    a.insert(4, 'x')
    a.insert(5, 'x')
    if board (3, "x"; 4, "x"; 5, "x")
      puts "X wins!"
    end
  end
end



class ComputerPlayerTest < MiniTest::Test
  def test_computer_player_move
    @board = Board.new
    a.insert (1, 'o')
    assert_includes Board, 'o'
  end

  def test_computer_player_win
    @board = Board.new
    a.insert(0, "o")
    a.insert(1, "o")
    a.insert(2, "o")
    if board (0, "o"; 1, "o"; 2, "o")
      puts "O wins!"
    end
  end
end









  
  




