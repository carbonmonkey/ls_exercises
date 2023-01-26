class MinilangError < StandardError; end
class TokenError < MinilangError; end
class EmptyStackError < MinilangError; end

class Minilang

  TOKENS = %w(PUSH ADD SUB MULT DIV MOD POP PRINT)

  def initialize(tokens)
    @tokens = tokens
    @stack = []
    @register = 0
  end

  def eval(degrees_c)
    tokens = format(CENTIGRADE_TO_FAHRENHEIT, degrees_c)
    tokens.split.each do |token|
      eval_token(token)
    end
  rescue MinilangError => e
    puts e.message
  end

  private

  attr_reader :stack, :tokens
  attr_accessor :register

  def eval_token(token)
    if TOKENS.include?(token)
      send(token.downcase)        
    elsif token =~ /\A[-+]?\d+\z/
      self.register = token.to_i
    else
      raise TokenError, "#{token} is not valid!"
    end
  end

  def push
   stack << register   
  end
  
  def add
    self.register = register + pop
  end

  def sub
    self.register -= pop
  end

  def mult
    self.register *= pop
  end

  def div
    self.register /= pop
  end

  def mod
    self.register %= pop
  end

  def pop
    if stack.empty?
      raise EmptyStackError, 'Empty stack!'
    end
    self.register = stack.pop
  end

  def print
    puts register
  end
end

CENTIGRADE_TO_FAHRENHEIT = '5 PUSH %<degrees_c>d PUSH 9 MULT DIV PUSH 32 ADD PRINT'

minilang = Minilang.new(CENTIGRADE_TO_FAHRENHEIT)
minilang.eval(degrees_c: 100)

minilang.eval(degrees_c: 0)

minilang.eval(degrees_c: -40)

# Minilang.new('1 ADD').eval


# Minilang.new('PRINT').eval
# # 0

# Minilang.new('5 PUSH 3 MULT PRINT').eval
# # 15

# Minilang.new('5 PRINT PUSH 3 PRINT ADD PRINT').eval
# # 5
# # 3
# # 8

# Minilang.new('5 PUSH 10 PRINT POP PRINT').eval
# # 10
# # 5

# Minilang.new('5 PUSH POP POP PRINT').eval
# # Empty stack!

# Minilang.new('3 PUSH PUSH 7 DIV MULT PRINT ').eval
# # 6

# Minilang.new('4 PUSH PUSH 7 MOD MULT PRINT ').eval
# # 12

# Minilang.new('-3 PUSH 5 XSUB PRINT').eval
# # Invalid token: XSUB

# Minilang.new('-3 PUSH 5 SUB PRINT').eval
# # 8

# Minilang.new('6 PUSH').eval
# # (nothing printed; no PRINT commands)