=begin
problem:
- create objects that represent a meetup date
- meetups happen monthly on the same day of the week
- inputs are month number and a year
- output is the exact date of the meeting based on the inputs

rules:
- descriptors are strings
  - not case sensitive
- 'teenth' means a day that ends in 'teenth'
  - each day of the week has one day in the month that is a teenth
- fifth day of the month may not happen
- days of the week are strings
  - not case sensitive

examples/test cases
- Need a Meetup class
- constructor method takes year then month integers
- #day method takes strings
  - day of the week and descriptor
  - returns a Date object
  - if there is no matching date, return nil

- discriptors are first, second, third, fourth, fifth, last, teenth

- no need to guard against invlaid inputs

data structures:
- integers
- strings


- date object

algorithm:
- constructor
  - get year and month arguments
  - save them as object attributes

- #day
  - save day and descriptor
  - check if there is a matching day in the month for the date object(helper)
  - if so, return a date object for that day
  - otherwise, return nil

- check month for day
  - if the descriptor is last:
    - get the last day of the objects month
    - until the day matches the argument:
      - subtract a day from the date
    -return the date object

  - if the descriptor is teenth
    - start on the 13th day of the month
    - iterate through each day until the matching day is found
    - return the date

  - create a date object using the month and year attributes
  - iterate through each day until a matching day is found
  - if the descriptor is more than first, add 7 days the number of times needed
  - it the month is no longer the same, return nil
  - return the date object

- #day_matches?
  - take the day and date object as arguments
  - call the method by the day name on the date object
=end

require 'date'

class Meetup
  WEEK = 7
  DESCRIPTORS = ['first', 'second', 'third', 'fourth', 'fifth']

  def initialize(year, month)
    @date = Date.civil(year, month)
    @last_day_of_month = Date.civil(year, month, -1)
  end

  def day(day_name, descriptor)
    descriptor = descriptor.downcase
    case descriptor
    when 'last'   then last(day_name)
    when 'teenth' then teenth(day_name)
    else               nth(day_name, descriptor)
    end
  end

  private

  def nth(day_name, descriptor)
    date = @date
    date += 1 until same_day_name?(day_name, date)
    date += WEEK * DESCRIPTORS.index(descriptor)

    return nil unless date.month == @date.month
    date
  end

  def last(day_name)
    date = @last_day_of_month
    date -= 1 until same_day_name?(day_name, date)
    date
  end

  def teenth(day_name)
    date = @date + 12
    date += 1 until same_day_name?(day_name, date)
    date
  end

  def same_day_name?(day_name, date)
    date.send(day_name.downcase + '?')
  end
end