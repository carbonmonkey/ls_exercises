=begin
Welcome Stranger

Create a method that takes 2 arguments, an array and a hash. The array will contain
2 or more elements that, when combined with adjoining spaces, will produce a person's
name. The hash will contain two keys, :title and :occupation, and the appropriate
values. Your method should return a greeting that uses the person's full name, and
mentions the person's title and occupation.

**problem**

- inputs are an array and a hash
  - array has 2 or more elements that represent a persons name
  - hash has 2 key value pairs, title and occupation
- output is a greeting
  - uses persons full name
  - mentions persons title and occupation

**example**

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
=> Hello, John Q Doe! Nice to have a Master Plumber around.

**data structures**

- array and hash --> string

**algorithm**

- join the array into a string
- access the values in the hash
- interpolate everything into a string and output it
=end

def greetings(name, job)
  puts "Hello #{name.join(' ')}! Nice to have a #{job[:title]} "\
  "#{job[:occupation]} around."
end


greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
