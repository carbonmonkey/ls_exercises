def century(year)
  century = if year.remainder(100) == 0
              year / 100
            else
              (year / 100) + 1
            end

  century = century.to_s
  last_digit = century[-1]
  next_to_last_digit = century[-2]

  return century + 'th' if next_to_last_digit == '1'

  century + case last_digit
            when '1' then 'st'
            when '2' then 'nd'
            when '3' then 'rd'
            else 'th'
            end
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
