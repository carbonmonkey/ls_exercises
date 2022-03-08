def xor?(exp1, exp2)
  return false if (exp1 && exp2) || (!exp1 && !exp2)
  true
end

# A traffic light at an intersection might be an example of xor.
# One light can be green only while the other is red, and vice versa.
# Or at a restaurant a server might be have to select soup or salad
# with an order, but can't choose neither or both. With an online order
# you might have to choose normal or expedited shipping.

# xor operations cannot use short circuit evalutaion. Both expressions
# must be evaluated in order to know if only one of them is true.