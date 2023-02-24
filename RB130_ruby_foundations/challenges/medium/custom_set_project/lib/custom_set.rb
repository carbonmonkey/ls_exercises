=begin
problem:
- create a custom set that with unique elements that can be manipulated in defined ways

rules:
- must use custom set type

examples/test cases:
- need a CustomSet class
	- constructor can take an array argument or no argument

	- #empty?:
		- returns true if the set is empty

	- #contains?:
		- returns true if the argument is in the set

	- #subset?:
		- returns true if the caller is a subset of the argument
		- a set always contains an empty subset

	- #disjoint?:
		- true if sets don't share any elements

	- #eql?:
		- true if sets contain all of the same elements
		- duplicates are okay

	- #add:
		- adds its argument to a set
		- adding a duplicate element doesn't alter the set

	- #intersection:
		- returns a new set with the shared elements of two sets
		- returns an empty set if no elements are shared

	- #difference:
		- returns a new set of the elements from the caller that are left after the elements from the argument are removed

	- #union:
		- returns a new set with the elements from two sets
		- elements are not duplicated

	data structures:
	- integers
	- array

	algorithm:
	- CustomSet class
		- constructor:
			- set a default argument to an empty array
			- remove duplicates from the input array and save it as objects

		- #empty?:
			- check if the objects array is empty

		- #contains?:
			- check if the argument is in the objects array

		- #subset?:
			- iterate through the numbers in the caller's objects array
			- return true if they are all in the argument's objects array

		- #disjoint:
			- iterate throught the numbers in the arguments objects array
			- return true if none of them are in the caller's objects

		- #eql?:
			- check if one array is a subset of the other and their objects arrays are both the same size

		- #==
			- alias to #eql

		- #add:
			- add the argument to the callers objects array
			- remove any duplicate elements from the objects array

		- #intersection:
			- iterate through the arguments objects
				- if the caller contains the current number, place it into a result array
			- create a CustomSet object using the result array

		- #difference:
			- create a result array by subtracting the arguments objects from the callers objects
			- create a CustomSet object using the result array

		- #union:
			- add the objects arrays from both sets
			- create a new set from the resulting array
=end

class CustomSet
	def initialize(objects=[])
		@objects = objects.uniq
	end

	def empty?
		objects.empty?
	end

	def contains?(object)
		objects.include?(object)
	end

	def subset?(other_set)
		objects.all? { |object| other_set.contains?(object) }
	end

	def disjoint?(other_set)
		objects.none? { |object| other_set.contains?(object) }
	end

	def eql?(other_set)
		subset?(other_set) && objects.size == other_set.objects.size
	end

	alias_method :==, :eql?

	def add(object)
		objects << object unless contains?(object)
		self
	end

	def intersection(other_set)
		intersecting = other_set.objects.select { |object| contains?(object) }
		CustomSet.new(intersecting)
	end

	def difference(other_set)
		CustomSet.new(objects - other_set.objects)
	end

	def union(other_set)
		CustomSet.new(objects + other_set.objects)
	end

	protected

	attr_reader :objects
end



































