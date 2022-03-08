puts "How old are you now?"
age_now = gets.to_i

puts "How old do you want to be when you retire?"
retirement_age = gets.to_i

years_to_go = retirement_age - age_now
retirement_year = Time.now.year + years_to_go

puts "It's #{Time.now.year}. You will retire in #{retirement_year}."
puts "You only have #{years_to_go} years of work to go!"