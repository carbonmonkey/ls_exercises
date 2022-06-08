=begin
Diamonds!

Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that
is supplied as an argument to the method. You may assume that the argument will always be an odd integer.

**problem**

- input is an odd integer
- output is a diamond displayed in an n x n grid
- n is equal to the total number of lines
- n is also equal to the length of the longest line
- the first and last lines are always a single '*' centered over the length of n
- the number of '*' in each string is increased by 2 until the longest line is reached
  - then each following string is reduced by 2 '*' until the final line


**examples**

diamond(1)

*

diamond(3)

 *
***
 *

 diamond(9)

    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *

**data structures**

- integer --> array of strings --> displayed strings as diamonds

**algorithm**

1. create a data structure representing each line of the diamond
  - create an empty array to contain the 'lines'
  - create a string 'temp' with a '*'
  **loop**
    - add '**' to 'temp'
    - add the value of 'temp' to the 'lines' array
    - repeat until the length of 'temp' is the length of 'n'
  **end loop**
  **loop**
    - remove '**' from 'temp'
    - add 'temp' to 'lines'
    - repeat until temp has one '*'
  **end loop**
2. display the lines
  **loop**
  - display a line from 'lines'
  - repeat until the end of 'lines' is reached
  **end loop**
=end

def display_lines(lines, n)
  lines.each { |line| puts line.center(n) }
  lines.pop
  lines.reverse_each { |line| puts line.center(n) }
end

def diamond(n)
  spaces = ' '
  line = '*'
  lines = []

  until line.length > n
    lines << line
    line = '*' + spaces + '*'
    spaces += '  '
  end

  display_lines(lines, n)
end



diamond(9)
diamond(3)
diamond(1)
