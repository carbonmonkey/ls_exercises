# tip calculator
def round_cents(num)
  format("%.2f", num)
end
amounts = Hash.new

puts "What is the bill?"
amounts[:bill] = gets.to_f

puts "What is the tip percentage?"
amounts[:tip_rate] = (gets.to_f) / 100

amounts[:tip] = (amounts[:bill] * amounts[:tip_rate])

amounts[:total] = amounts[:bill] + amounts[:tip]


puts "The tip is $#{round_cents(amounts[:tip])}"
puts "The total is $#{round_cents(amounts[:total])}"