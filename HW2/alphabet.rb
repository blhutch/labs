require 'pry'
encode_hash = {
	'a' => 'antelope',
	'b' => 'baboon',
	'c' => 'chimp',
	'd' => 'dog',
	'e' => 'elephant',
	'f' => 'fox',
	'g' => 'giraffe',
	'h' => 'hog',
	'i' => 'iguana',
	'j' => 'jaguar',
	'k' => 'kangaroo',
	'l' => 'llama',
	'm' => 'monkey',
	'n' => 'newt',
	'o' => 'octopus',
	'p' => 'panda',
	'q' => 'quail',
	'r' => 'rhinocerous',
	's' => 'stag',
	't' => 'tiger',
	'u' => 'unicorn',
	'v' => 'vulture',
	'w' => 'wombat',
	'x' => 'xray tetra',
	'y' => 'yak',
	'z' => 'zebra'
}

decode_hash = encode_hash.invert

phrase = "Hey There everYone!!!!AHHHHahh"		 


def encode(hash, phrase)
	letters = phrase.split("")
    result = []
    letters.each do |letter|
    	translated_letter = hash[letter.downcase]
    	if translated_letter.nil?
    		result.push(letter)
    	else
    		result.push(translated_letter + ' ')
    	end
	end
	# result.delete_if { |element| element == ' ' }
	return result.join
end

puts "Phrase: #{phrase}"
puts
answer = encode(encode_hash, phrase)
puts "Encoded Answer: #{answer}"

def decode(hash, phrase)
	words = phrase.split(/\s/)
	result = []
	words.each do |word| 
		if word.empty?
			result.push(' ')
		else
			translated_word = hash[word.downcase]
			if translated_word.nil?
				result.push(word)
			else
				result.push(translated_word)
			end	
		end		
	end
	return result.join	
end	

decode_answer = decode(decode_hash, answer)
puts "Decoded Answer: #{decode_answer}"
puts


  




