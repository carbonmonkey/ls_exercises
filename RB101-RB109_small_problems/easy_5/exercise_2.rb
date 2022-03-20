# def time_of_day(total_minutes)
#   hours, minutes = total_minutes.abs.divmod(60)
#   hours = hours.remainder(24) if hours >= 24

#   if total_minutes.negative?
#     if minutes > 0
#       hours = 23 - hours
#       minutes = 60 - minutes
#     elsif hours > 0
#       hours = 24 - hours
#     end
#   end

#   "#{format("%02d", hours)}:#{format("%02d", minutes)}"
# end

# def time_of_day(int)
#   hours = (int / 60) % 24
#   minutes = int % 60
#   format('%02d:%02d', hours, minutes)
# end

SECONDS_PER_MINUTE = 60
WEEKDAYS = %w(Sunday Monday Tuesday Wednesday Thursday Friday Saturday)

def time_of_day(total_minutes)
  t = Time.new(2023) + (total_minutes * SECONDS_PER_MINUTE)
  format("#{WEEKDAYS[t.wday]} %02d:%02d", t.hour, t.min)
end

p time_of_day(0) == "00:00"
p time_of_day(-3) #== "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "Thursday 01:29"
p time_of_day(-60) == "23:00"
p time_of_day(60) == "01:00"
p time_of_day(-1440) == "00:00"
p time_of_day(1440) == "00:00"
