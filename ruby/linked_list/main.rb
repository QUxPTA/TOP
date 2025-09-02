require_relative 'lib/linked_list'

# Test 1: Empty list
list = LinkedList.new
puts list
# Expected: nil

# Test size of empty linked_list
puts "linked_list size: #{list.size}" # Expected: 0

# Test head of empty linked_list
puts "Head: #{list.head.inspect}" # Expected: nil
# Test tail of empty linked_list
puts "Tail: #{list.tail.inspect}" # Expected: nil

# Test pop from empty list
puts "Popped: #{list.pop.inspect}" # Expected: nil

# Test contains? on empty list
puts "contains?('dog'): #{list.contains?('dog').inspect}" # Expected: false

# Test 2: Prepend into empty list
list = LinkedList.new
list.prepend('dog')
puts list
# Expected: ( dog ) -> nil

puts "Head: #{list.head.value}" # Expected: dog
puts "Tail: #{list.tail.value}" # Expected: dog
puts list.at(0).value # Expected: dog

# Edge case: Repeatedly calling head/tail on single-node list
puts "Head again: #{list.head.value}" # Expected: dog
puts "Tail again: #{list.tail.value}" # Expected: dog

# Test contains? on one node
puts "contains?('dog'): #{list.contains?('dog').inspect}" # Expected: true
puts "contains?('cat'): #{list.contains?('cat').inspect}" # Expected: false

# Test Pop from single-element list
puts "Popped: #{list.pop.inspect}" # Expected: dog
puts "List after Pop: #{list}"

# Test 3: Append into empty list
list = LinkedList.new
list.append('cat')
puts list
# Expected: ( cat ) -> nil

# Test 4: Mix prepend and append
list = LinkedList.new
list.append('cat')
list.append('parrot')
list.prepend('dog')
puts list
# Expected: ( dog ) -> ( cat ) -> ( parrot ) -> nil

# Test 5: Multiple appends
list = LinkedList.new
list.append('dog')
list.append('cat')
list.append('parrot')
list.append('hamster')
puts list
# Expected: ( dog ) -> ( cat ) -> ( parrot ) -> ( hamster ) -> nil

# Test size of linked_list with nodes
puts "linked_list size: #{list.size}" # Expected: 4

# Test head and tail
puts "Head: #{list.head.value}" # Expected: dog
puts "Tail: #{list.tail.value}" # Expected: hamster

# Test at(index)
puts list.at(0).value  # Expected: "dog"
puts list.at(1).value  # Expected: "cat"
puts list.at(2).value  # Expected: "parrot"
puts list.at(5).inspect # Expected: nil (out of bounds)

# Test popping a linked_list with nodes
3.times { puts "Popped: #{list.pop.inspect}" }
# Expected: "hamster" then "parrot", then "cat"
puts list # Expected: ( dog ) -> nil

# Test contains?
puts "contains?('dog'): #{list.contains?('dog').inspect}" # Expected: true
puts "contains?('cow'): #{list.contains?('cow').inspect}" # Expected: false
