# def running_total(input_arr)
#   running_totals = []
#   total = 0

#   input_arr.each do |num|
#     total += num
#     running_totals.push(total)
#   end

#   running_totals
# end

# def running_total(input_arr)
#   total = 0
#   input_arr.each_with_object([]) { |num, arr| arr.push(total += num) }
# end

def running_total(arr)
  totals = []
  
  arr.inject(0) {|sum, n| totals[totals.length] = sum + n}
  
  totals
end
# require 'pry'
# def running_total(arr)
#   return [] if arr.empty?
#   binding.pry
#   running_total(arr[0..-2]) + [arr.sum]
# end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []

p running_total([1.7, 2, 3.5]) == [1.7, 3.7, 7.2]
p running_total([0, 0, 0]) == [0, 0, 0]
p running_total([-3, -2, 5]) == [-3, -5, 0]
