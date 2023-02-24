=begin
problem:
- create a singly linked list
- each element contains data and a next field
- LIFO
- able to reverse
- can convert to and from array

examples/test cases:
- need a SimpleLinkedList class
  - constructor creates an empty list
  - #size
    - returns the size of the list
  - #empty?
    - returns true if list is empty, false otherwise
  - #push
    - creates an Element object and adds to end of list
  - #peek
    - returns data for head element
    - returns nil if list is empty
  - #head
    - returns most recently added element
  - #pop
    - removes head and returns data
  - ::from_a
    - takes an array or nil
    - an empty array or nil creates an empty list
    - the first element of the array will be the head
  - #to_a
    - returns an array of datas for each element
    - an empty list returns an empty array
    - the head is the first element of the array
  - #reverse
    - returns a list with elements reversed

- need a Element class
  - constructor method takes an argument or two
    - first argument is data, second is optional next element
  - #datum
    - returns element data
  - #tail?
    - returns true if no next element
  - #next
    - returns next element
    - returns nil if no next element

data structures:
array

algorithm:
- SimpleLinkedList class
  - constructor method:
    - set a head attribute to nil
    - set a size attribute to 0

  - #size:
    - getter method for attribute

  - #empty:
    - return true if size is 0, false otherwise

  - #push:
    - create an Element object with the argument as datum
    - pass the current head as the second argument(next)
    - reassign head to the new element
    - increment size by 1

  - #peek:
    - return nil if the list is empty
    - return datnum for the head element

  - #head:
    - getter method for head attribute

  - #pop:
    - save the datum for the current head
    - set the head as next element of current head
    - return the saved datnum

  - ::from_a:
    - create an empty list object
    - return the empty list object if the argument is an empty array or nil
    - iterate through the array in reverse
      - push the current element to the list

  - #to_a:
    - set the head as the current element
    - iterate through a range from 1 to size
      - add the datum for the current element to a result array
      - set the next element
    - return the result array

  - #reverse:
    - convert the list into an array
    - reverse the array
    - convert the array back into a list

- Element class
  - constructor method:
    - two arguments: datnum and next, next has a default value of nil
    - save the arguments as attributes

  - #datum:
    - getter method for attribute

  - #next:
    - getter method for attribute

  - #tail?:
    - return true if next returns nil, false otherwise

=end

class SimpleLinkedList
  attr_reader :head, :size

  def initialize
    @head = nil
    @size = 0
  end

  def self.from_a(arr)
    list = SimpleLinkedList.new
    return list if arr.nil?
    arr.reverse_each { |item| list.push(item) }
    list
  end

  def to_a
    current_element = head
    Array.new(size).map do |_|
      value = current_element.datum
      current_element = current_element.next
      value
    end
  end

  def reverse
    self.class.from_a(to_a.reverse)
  end

  def empty?
    size.zero?
  end

  def push(datum)
    @size += 1
    @head = Element.new(datum, head)
  end

  def peek
    head ? head.datum : nil
  end

  def pop
    old_head = head
    @head = head.next
    @size -= 1
    old_head.datum
  end
end

class Element
  attr_reader :datum, :next

  def initialize(datum, next_elem=nil)
    @datum = datum
    @next = next_elem
  end

  def tail?
    self.next.nil?
  end
end