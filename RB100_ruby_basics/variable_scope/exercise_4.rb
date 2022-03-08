a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

my_value(a)
puts a

# The ouput is 'Xy-zy'. The variable 'b' in the method definition is pointed
# to the same object as the top-level 'a'. On line 4 element assignment is 
# used to mutate the string value in the address space that both 'a' and
# are pointing to. Line 8 outputs that mutated value.