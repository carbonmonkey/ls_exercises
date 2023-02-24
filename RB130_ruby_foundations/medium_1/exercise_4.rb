arr =  %w(raven finch hawk eagle)

def group_raptors(array)
  yield(array)
end

p group_raptors(arr) { |_, _, *raptors| raptors }