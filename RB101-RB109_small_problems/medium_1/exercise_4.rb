=begin
- a bank of switches numbered from 1 to n
- each connected to one light that is off
- first pass toggle every switch
- second pass toggle switch 2, 4, 6...
- third pass toggle 3, 6, 9..
- 4th pass 4, 8, 12...
- repeat through n repititions
- `n` represents the number of lights and repitions
- input is `n`
- output is an array containing the numbers of the switches that are on

**examples**

lights_on(5) == [1, 4]
pass 1 --> [1, 2, 3, 4, 5]
pass 2 --> [1, x, 3, x, 5]
pass 3 --> [1, x, x, x, 5]
pass 4 --> [1, x, x, 4, 5]
pass 5 --> [1, x, x, 4, x]

lights_on(10) == [1, 4, 9]

**data structures**

- integer --> hash --> array

**algorithm**

- create a hash with 1..n as keys and 0 for all values
  - create an empty hash
  - iterate through 1..n
    - set the number as a key, and 0 as the value
- set a counter to 1
**outer loop*
  - toggle the value of the keys that are multiples of the counter to either 1 or 0
  **inner loop**
    - get a key-value pair from the hash
    - if the key is a multiple of the counter, check the value
        - if the value is a 0, change it to 1, or vise-versa
      - repeat until the end of the hash is reached
  **end inner loop**
  - increment the counter by 1
  - repeat until the counter is greater than `n`
**end outer loop**
- return an array of keys from the hash that have a value of 1
  - create an empty array for the result
  - iterate through the hash
  - if the value is a 1, add the key to the result array
  - return the result array
=end

def swap_switches!(lights, counter)
  lights.each do |switch_num, state|
    if switch_num % counter == 0
      lights[switch_num] = (state == 0 ? 1 : 0)
    end
  end
end

def lights_on(n)
  lights = {}
  1.upto(n) do |switch_num|
    lights[switch_num] = 0
  end

  counter = 1

  until counter > n
    swap_switches!(lights, counter)
    counter += 1
  end

  lights.select { |_switch_num, state| state == 1 }.keys
end

p lights_on(5) == [1, 4]
p lights_on(10) == [1, 4, 9]
p lights_on(1000) == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256] +
                     [289, 324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841] +
                     [900, 961]
