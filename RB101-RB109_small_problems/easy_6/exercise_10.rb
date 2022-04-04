=begin

Write a method that takes a positive integer, n, as an argument, and 
displays a right triangle whose sides each have n stars. The 
hypotenuse of the triangle (the diagonal side in the images below) 
should have one end at the lower-left of the triangle, and the other 
end at the upper-right.

**problem**
- input is a positive integer `n`
- output is a right triangle
  - sides each have n stars
  - hypotinuse is on the left
  - right angle on bottom right
  - first row contains 1 star, second row 2 stars, ...
  - last row contains no spaces
  - each preceeding row has one additional space
- `n` is equal to number of rows
- `n` is equal to length of all rows

**examples**

triangle(5)

    *
   **
  ***
 ****
*****

triangle(9)

        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********

**data structures**

- array of strings

**algorithm**
- create an empty array for the rows
- set row number to 1
- create a string for a row
  - pass row number and length to create row method
- add the string to the array
- increment the row number by 1
- repeat the 3 previous steps until the row number equals `n`
- print each row in succession

**problem: create a row**
- input is row number and length of row
- output is a string
  - row number is number of stars in row
  - stars are preceeded by spaces
    - number of spaces is equal to row length - row number

**examples**

create_row(1, 5) == "    *"
create_row(3, 5) == "  ***"

**data structures**

- string

**algorithm**

- set number of stars as row number
- set number of spaces as row length minus row number
- concatinate number of spaces followed by number of stars
- return the string

=end

def create_row(row_number, row_length)
  num_of_stars = row_number
  num_of_spaces = row_length - num_of_stars
  (' ' * num_of_spaces) + ('*' * num_of_stars)
end

# p create_row(1, 5) == "    *"
# p create_row(3, 5) == "  ***"

# def triangle(n)
#  result = []
#  row_number = 1
#  loop do
#   break if row_number > n
#   result << create_row(row_number, n)
#   row_number += 1
#  end

#  puts result
# end

def triangle(n)
  for stars in 1..n
    puts format("%#{n}s", '*' * stars)
  end
end

triangle(5)
triangle(9)


# - create an empty array for the rows
# - set row number to 1
# - create a string for a row
#   - pass row number and length to create row method
# - add the string to the array
# - increment the row number by 1
# - repeat the 3 previous steps until the row number equals `n`
# - print each row in succession
