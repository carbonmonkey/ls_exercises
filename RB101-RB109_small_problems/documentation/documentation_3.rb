# https://docs.ruby-lang.org/en/2.7.0/doc/syntax/calling_methods_rdoc.html#label-Default+Positional+Arguments

def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)

#=> [4, 5, 3, 6]