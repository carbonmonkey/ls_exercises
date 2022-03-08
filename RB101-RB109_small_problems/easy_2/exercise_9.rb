name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# Outputs:
# BOB
# BOB
# This is because line 2 mutates the String object that both name and
# save_name are bound to.
