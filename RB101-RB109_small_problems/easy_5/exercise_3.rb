# def after_midnight(time)
#   time_arr = time.split(':')
#   hours, mins = time_arr.map { |elem| elem.to_i }
#   total_mins = (hours * 60) + mins
#   total_mins == 1440 ? 0 : total_mins
# end

def before_midnight(time)
  after_midnight(time) == 0 ? 0 : 1440 - after_midnight(time)
end

def after_midnight(time) 
  hours, mins = time.split(':').map(&:to_i)
  hours = hours % 24
  t1, t2 = Time.new(0), Time.new(0, 1, 1, hours, mins)
  (t2.to_i - t1.to_i) / 60
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
