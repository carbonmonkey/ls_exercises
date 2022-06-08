=begin
**problem**

- create a stack and register language
- input is a string
- each word in the string is a integer or a command
- the register holds the current value
- the stack holds multiple values
- PUSH adds a value from the register to the stack
    - the value also stays in the register
- POP removes from top of stack into register

**data structures**

- array

**algorithm**

- set the register to 0
- create an empty array for the stack
- split the input string into an array
- get a value from the input string
- perform the action associated with it
  - if it is a integer, replace the value in the register with it
  - if a command, execute it

=end

def valid_integer?(num)
  num == num.to_i.to_s
end

def operation!(token, register, stack)
  case token
  when 'PUSH'  then stack << register
  when 'ADD'   then register += stack.pop
  when 'SUB'   then register -= stack.pop
  when 'MULT'  then register *= stack.pop
  when 'DIV'   then register /= stack.pop
  when 'MOD'   then register %= stack.pop
  when 'POP'   then register = stack.pop
  when 'PRINT' then puts register
  else              puts "INPUT ERROR. '#{token}' IS NOT A VALID TOKEN"
  end

  register
end

def minilang(program)
  register = 0
  stack = []

  program.split.each do |token|
    begin
      register = if valid_integer?(token)
                   token.to_i
                 else
                   operation!(token, register, stack)
                 end
    rescue TypeError
      puts 'ERROR. CANNOT PERFORM AN OPERATION WITH AN EMPTY STACK'
    rescue ZeroDivisionError
      puts 'ERROR. CANNOT DIVIDE BY 0'
    end
  end

  nil
end

# minilang('3 PUSH 5 MOD PUSH 7 PUSH 5 PUSH 4 MULT PUSH 3 ADD SUB DIV')

minilang('CAT PRINT')

minilang('ADD PRINT')
minilang('PUSH 7 DIV')

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)
