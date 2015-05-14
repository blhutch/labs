require 'pry'

module IronYardGames
  class Card
    include Comparable

    RANKS = (2..10).to_a + [:J, :Q, :K, :A]
    SUITS = [:diamonds, :clubs, :spades, :hearts]

    RANK_VALUES = {J: 11, Q: 12, K: 13, A: 14}

    attr_accessor :rank, :suit
    

    def initialize(rank=nil, suit=nil)
      @rank = rank || RANKS.sample
      @suit = suit || SUITS.sample
    end

    def value
      val = RANK_VALUES[self.rank]
      val ||= self.rank
    end

    def <=>(other)
      self.value <=> other.value
    end
  end

  class Deck

    def initialize
      @deck = []
      Card::SUITS.each do |suit|
        Card::RANKS.each do |rank|
          @deck << Card.new(rank, suit)
        end
      end
      @deck
    end

    def draw(number)
      if number < @deck.size
        arr = @deck.reverse!.pop(number)
        deck = arr.dup
        deck.each_with_index do |n, i|
          arr[i] = "#{n.rank} of #{n.suit}"
        end
        @deck.reverse!
        arr.reverse!
        arr
      else
        'There are not enough cards in the deck to draw that number.'
      end  
    end

    def deck_size
      "#{@deck.size} cards"
    end  

    def shuffle
      @deck.shuffle!
    end  

    def peek
      card = @deck.first
      "#{card.rank} of #{card.suit}"
    end

    def read_deck
      arr = []
      @deck.each do |n|
        arr << "#{n.rank} of #{n.suit}"
      end
      arr
    end

    def read_card(position)
      if position > 0 && position < 53
        card = @deck[position - 1]
        "#{card.rank} of #{card.suit}"
      else
        'That position does not exist in the deck.'
      end 
    end  

  end
end

deck = IronYardGames::Deck.new
puts "Peek: #{deck.peek}"
puts "Size: #{deck.deck_size}"
puts "Draw 5:"
puts deck.draw(5).inspect
puts "Size: #{deck.deck_size}"
puts "Peek: #{deck.peek}"
puts "Size: #{deck.deck_size}"
puts "Shuffling Deck..."
deck.shuffle
puts "Peek: #{deck.peek}"

binding.pry





