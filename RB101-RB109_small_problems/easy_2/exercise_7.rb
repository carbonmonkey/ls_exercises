def every_other_number(i)

  return if i == 0

  every_other_number(i - 2)

  puts i
end

every_other_number(98)
