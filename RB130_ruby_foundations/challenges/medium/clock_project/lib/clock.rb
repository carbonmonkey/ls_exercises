=begin
problem:
- a clock object represents a time
- adding or subtracting minutes returns a new clock object
- clock objects that represent the same time are equal
- don't use built-in date or time function

examples/test cases
- the ::at method returns a clock object
  - takes an hour argument, or hour and minute arguments as integers

- the #to_s method returns a string representation of the time on the clock

- the #+ and #- methods take a minute argument as an integer, and return a new clock object

- the #== method checks if two clock's times are the same

- time is in 24 hour format

- adding or subtracting more than a day wraps around

- midnight is 00:00

data structures:
methods for adding and subtracting hours and minutes

algorithm:
- create constants for hours in day, minutes in hour, and minutes in day
- ::at
  - instantiate a clock object
  - use default argument for minutes at 0
  - save hours and minutes

- #to_s
  - format the object's hours and minutes into a string

- #+
  - add the clock's hours and minutes to the argument to get total minutes
  - divide the total minutes by minutes in day and save the remainder as total minutes
  - divide the total minutes by minutes in hour and save the quotient as hours, and the remainder as minutes
  - instantiate a new clock object using the hours and minutes

- #-
  - until the absolute value of the argument is less than minutes in a day
    - add minutes in a day
  - subtract the result from the current time and save it
  - if the result is negative, subtract it from minutes in a day
  - convert the result to hours and minutes
  - instantiate a clock object with the hours and minutes
=end

class Clock
  HOURS_IN_DAY = 24
  MINUTES_IN_HOUR = 60
  MINUTES_IN_DAY = HOURS_IN_DAY * MINUTES_IN_HOUR

  def self.at(hours, minutes=0)
    new(hours, minutes)
  end

  def initialize(hours, minutes)
    @hours = hours
    @minutes = minutes
  end

  def to_s
    format('%02d:%02d', hours, minutes)
  end

  def ==(other_clock)
    to_s == other_clock.to_s
  end

  def +(minutes_to_add)
    total_minutes = total_minutes_on_clock + minutes_to_add
    Clock.new(*minutes_to_hours_and_minutes(total_minutes))
  end

  def -(subtracted_minutes)
    total_minutes = total_minutes_on_clock - subtracted_minutes

    total_minutes += MINUTES_IN_DAY while total_minutes.negative?

    Clock.new(*minutes_to_hours_and_minutes(total_minutes))
  end

  private

  attr_reader :hours, :minutes

  def minutes_to_hours_and_minutes(total_minutes)
    (total_minutes % MINUTES_IN_DAY).divmod(MINUTES_IN_HOUR)
  end

  def total_minutes_on_clock
    (hours * MINUTES_IN_HOUR) + minutes
  end
end
