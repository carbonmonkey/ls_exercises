class GuessingGame
  def initialize
    @remaining_guesses = 7
    @number = rand(1..100)
  end

  def show_remaining_guesses
    puts "You have #{@remaining_guesses} guesses remaining."
  end

  def get_guess
    guess = nil
    loop do
      print 'Enter a number between 1 and 100: '
      guess = gets.to_i
      break if (1..100).cover?(guess)
      print 'Invalid guess. '
    end
    @guess = guess
  end
  
  def show_hint
    hint = @guess > @number ? 'high' : 'low'
    puts "You're guess is too #{hint}.\n\n"
  end

  def show_result
    if @number == @guess
      puts "That's the number!\n\nYou won!"
    else
      puts 'You have no more guesses. You lost!'
    end
  end

  def play
    loop do
      show_remaining_guesses
      get_guess
      @remaining_guesses -= 1
      break if @guess == @number || @remaining_guesses <= 0
      show_hint
    end
    show_result
  end
end

game = GuessingGame.new
game.play