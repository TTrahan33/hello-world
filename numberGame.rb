#Get my number game

puts "Welcome to 'Get My Number!'"
#get user's name
print "What's your name? "
name = gets.chomp
puts "Welcome, #{name}!"

puts "I've got a random number between 1 and 100."
puts "Can you guess it?"
#generate a random number
target = rand(100) + 1

#keep track of the number of guesses
num_guesses = 0
#track whether the player has guessed it correctly
guessed_it = false

while num_guesses < 10 && guessed_it == false

  puts "You've got #{10 - num_guesses} guesses left"
  print "Make a guess: "
  guess = gets.to_i

  num_guesses += 1

  if guess < target
    puts "Oops.  Your guess was HIGH."
  elsif guess > target
    puts "Oops.  Your guess was LOW."
  elsif guess == target
    puts "Good job #{name}!"
    puts "You guessed my number in #{num_guesses} guesses!"
    guessed_it = true
  end
end

unless guessed_it
  puts "Sorry. You didn't get my number.  (It was #{target}.)"
end
