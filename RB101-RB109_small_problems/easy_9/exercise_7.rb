=begin
Name Swapping

Write a method that takes a first name, a space, and a last name passed as a single
String argument, and returns a string that contains the last name, a comma, a space,
and the first name.

**problem**

- input is a string
  - a first name, a space, and a last name
- ouput is a string
    - the last name, a comma, a space, and the first name

**examples**

swap_name('Joe Roberts') == 'Roberts, Joe'

**data structures**

- string --> array --> string

**algorithm**

- split the string into an array of names
- interpolate the last name, a comma, a space, and the first name into a string
- return the string
=end

def swap_name(names)
  names_arr = names.split
  %(#{names_arr.last}, #{names_arr.first})
end

p swap_name('Joe Roberts') == 'Roberts, Joe'
