# def convert_to_base_8(n)
#   n.to_s(8).to_i
# end

# base8_proc = method(:convert_to_base_8).to_proc

# p [8, 10, 12, 14, 16, 33].map(&base8_proc)

def big_and_backwards(str)
  str.upcase.reverse
end

# bnb_proc = method(:big_and_backwards).to_proc
bnb_proc = proc { |str| str.upcase.reverse }

p bnb_proc.call('carbon monkey')