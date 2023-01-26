=begin
problem:
- create a CircularQueue class.
- when an object is added, it follows the most recently added object
  - if the queue is full, the oldest object is replaced
- removing always removes the oldest object
- The buffersize is specified when the queue is instantiated
- enqueue adds an object
- dequeue removes an object
- none of the values in the queue are nil, but nil is returned if the queue is empty

ds:
array

algo:
- create an empty array
- when an object is added:
  - remove the object from the beginning of the array if the array is at the buffer size
  - add the object to the end of the array
- when an object is removed:
  - remove and return the first object in the array
=end

class CircularQueue
  def initialize(buffer)
    @buffer = buffer
    @queue = []
  end

  def enqueue(obj)
    dequeue if @queue.size >= @buffer
    @queue << obj
  end

  def dequeue
    @queue.shift
  end
end

queue = CircularQueue.new(3)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil

queue = CircularQueue.new(4)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 4
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil