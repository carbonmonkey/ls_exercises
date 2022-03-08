a = 7

def my_value(b)
  b = a + a
end

my_value(a)
puts a

# This outputs an error. There is no variable 'a' initalized within the 
# method definition's scope, so  line 4 throws an error when it tries 
# to reference 'a'. 