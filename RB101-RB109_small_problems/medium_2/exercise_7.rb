=begin
problem:
- find the number of friday the 13ths in a givin year
- year is greater than 1752

ds:
year --> array of 13ths --> count of friday

algo:
- iterate through 1..12
- place a time object for the 13th day into an array
- select the objects that are fridays
- return a count of those objects


five friday algo:
- iterate through the days in the year
- if the day is friday
  - add the month as a key and increment the value by 1
- count the number of values that are 5
=end

require 'date'

def five_fridays(year)
  fridays_per_month = Hash.new(0)
  Date.new(year).upto(Date.new(year, 12, 31)) do |day|
    fridays_per_month[day.month] += 1 if day.friday?
  end
  fridays_per_month.values.count(5)
end

def friday_13th(year)
  thirteenths = (1..12).map do |month|
    Time.new(year, month, 13)
  end
  thirteenths.count(&:friday?)
end

p five_fridays(2024)
# p friday_13th(2015) == 3
# p friday_13th(1986) == 1
# p friday_13th(2019) == 2