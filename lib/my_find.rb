require 'pry'

def my_find(collection)
  i = 0
  while i < collection.length
    return collection[i] if yield(collection[i])
    i = i + 1
  end
end

=begin
collection = (1..100).to_a
my_find(collection) {|i| i % 3 == 0 and i % 5 == 0 }

The purpose of the find method is to return the first element in the array that evaluates to true not the return value itself.
So in this case the return value will be 15.
=end
