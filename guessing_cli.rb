def run_guessing_game
  puts "Guess a number between 1 and 6."

  input = nil
  winner = rand(1..6)

  while input != "exit"
    input = gets.chomp
    guess = input.to_i
    valid_guesses = (1..6).to_a

    if guess != winner && valid_guesses.include?(guess)
      1.times do puts "The computer guessed #{winner}."
      end
    elsif guess == winner
      1.times do puts "You guessed the correct number!"
      end
    else
      1.times do puts "Invalid entry, try again."
      end
    end
    break if valid_guesses.include?(guess)
  end
  puts "Goodbye!"
end
