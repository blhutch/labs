require 'pry'
require 'set'

word_list = ("data", "random", "iron", "yard", "code", "flight",
            "boeing", "seven", "forty", "computer", "macbook",
            "mouse", "keyboard", "font", "ruby", "water", "sky")

turn_count = 7
guesses = Set.new

def intermediate_word(answer, guesses)
  #answer.each_char { |l| guesses.include?(l)? print l : print "-" }
  answer.each_char do |letter|
    #guesses.include?(letter) ? print letter : print "-"
    if guesses.include?(letter)
      print letter
    else
      print "-"
    end
  end  
  puts
end

def word_complete?(word, guessed_letters)
  guessed_letters == word.chars.to_sset
end

binding.pry	

