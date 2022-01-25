def count_occurrences(vehicles)
  vehicle_count = Hash.new(0)
  vehicles.each do |vehicle|
    vehicle_count[vehicle.downcase] += 1
  end
  vehicle_count.each do |vehicle, count|
    puts "#{vehicle} => #{count}"
  end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck', 'suv'
]

count_occurrences(vehicles)