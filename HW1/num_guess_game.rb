random_number = rand(100)
puts "Pick a number between 1 and 100"
guess = gets.chomp.to_i
until guess == random_number
  if guess > random_number
  	puts "You are too high!"
  else guess < random_number
  	puts "You are too low!"
  end
  puts "Pick a number between 1 and 100"
  guess = gets.chomp.to_i
end

 puts "You picked the magic number!"
 puts "Random number was:" + random_number.to_s
 puts "User guess was" + guess.to_s


