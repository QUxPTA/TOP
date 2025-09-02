require_relative 'lib/linked_list'

# Test 1: Empty list
list = LinkedList.new
puts list

# Test size of empty linked_list
puts "linked_list size: #{list.size}" # Expected: 0
# Expected: nil

# Test 2: Prepend into empty list
list = LinkedList.new
list.prepend('dog')
puts list
# Expected: ( dog ) -> nil

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

# Test size of linked_list with nodes
puts "linked_list size: #{list.size}" # Expected: 4
# Expected: ( dog ) -> ( cat ) -> ( parrot ) -> ( hamster ) -> nil
