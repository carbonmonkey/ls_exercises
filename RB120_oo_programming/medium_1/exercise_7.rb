class GuessingGame
  def initialize(low, high)
    @range = low..high
    @remaining_guesses = Math.log2(size_of_range).to_i + 1 
    @number = nil
    @guess = nil 
  end

  def set_number
    @number = rand(@range)
  end

  def size_of_range
    @range.last - (@range.first - 1)
  end

  def show_remaining_guesses
    puts "You have #{@remaining_guesses} guesses remaining."
  end

  def get_guess
    guess = nil
    loop do
      print "Enter a number between #{@range.first} and #{@range.last}: "
      guess = gets.to_i
      break if @range.cover?(guess)
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
  set_number
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

game = GuessingGame.new(101, 105)
game.play