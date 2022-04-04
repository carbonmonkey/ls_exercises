# **problem**
# input:
#   - a floating point number
#   - represents an angle between 0 and 360 degrees
# output:
#   - a string
#   - represents the angle in degrees, minutes and seconds
#   - degree symbol to represent degrees
#   - `'` to represent minutes
#   - `"` to represent seconds
#   - minutes and seconds are two digits with leading zeros
# - a degree has 60 minutes
# - a minute has 60 seconds

# questions:
# - how do we know how the input number splits into degrees, minutes, and seconds?
#   - degrees are whole numbers to the left of decimal
#   - digits to the right of the decimal are fractions of a degree
#     -expressed in hours and minutes
# - how do we represent the degree symbol?
#   - DEGREE = "\xC2\xB0"

# **examples**

# dms(30) == %(30°00'00")
# dms(76.73) == %(76°43'48")
# dms(254.6) == %(254°36'00")
# dms(93.034773) == %(93°02'05")
# dms(0) == %(0°00'00")
# dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

# **data structures**

# - an output string

# **algorithm**

# 1. create a constant with the value of minutes-in-degree
# 2. create a constant with the value of seconds-in-minute
# 3. create a constant with the value of seconds-in-degree
# 4. multiply input float by seconds-in-degree
#     - covert the result to integer, and save it as total seconds
# 5. divide total seconds by seconds-in-degree
#     - save the quotient as degrees
#     - save the remainder as remaining seconds
# 6. divide the remaining seconds by seconds-in-minutes
#     - save the quotient as minutes
#     - save the remainder as seconds
# 7. convert minutes and seconds to 2 digits with leading zeros
#     - use Kernel#format
# 8. interpolate the results into a string
# 9. return the string

# further exploration:
# 1. if the input is positive:
#     - divide the number by 360 and turn the remainder into total seconds
# 2. if the input
# **code**

MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = SECONDS_PER_MINUTE * MINUTES_PER_DEGREE
DEGREE = "\xC2\xB0"

def dms(degrees_float)
  total_seconds = ((degrees_float % 360) * SECONDS_PER_DEGREE).to_i
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)

  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)

  # minutes = format('%02d', minutes)
  # seconds = format('%02d', seconds)
  # degrees = degrees % 360

  # "#{degrees}#{DEGREE}#{minutes}'#{seconds}\""

  format("#{degrees}#{DEGREE}%02d'%02d\"", minutes, seconds)
end



# def dms(float)
#   degrees = float.floor
#   minutes = (60 * (float - degrees)).round
#   seconds = (60 * (60 * (float - degrees)- minutes)).round
#   p degrees
#   p minutes
#   p seconds
# end

puts dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
p dms(400) == %(40°00'00")
p dms(-40) == %(320°00'00")
p dms(-420) == %(300°00'00")
