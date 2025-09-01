# Fibonacci Sequence (Iterative and Recursive)
# --------------------------------------------
# The Fibonacci sequence is a series of numbers where
# each number is the sum of the two preceding ones.

# Iterative version
# -----------------
# Builds the sequence step by step in a loop.
def fibs(n)
  return [] if n.zero?    # Base case: no numbers
  return [0] if n == 1    # Base case: only the first number

  array = [0, 1]          # Start with the first two Fibonacci numbers

  while array.length < n
    last = array[-1]          # Last element in the sequence
    second_last = array[-2]   # Second to last element
    result = last + second_last

    array << result           # Append next Fibonacci number
  end

  array                       # Return full sequence
end

# Recursive version
# -----------------
# Uses the definition of Fibonacci directly:
# fibs_rec(n) = fibs_rec(n-1) + next_number
def fibs_rec(n)
  # Calls made before hitting base case
  puts 'This was printed recursively'

  return [] if n.zero?    # Base case: no numbers
  return [0] if n == 1    # Base case: one number
  return [0, 1] if n == 2 # Base case: two numbers

  prev = fibs_rec(n - 1)              # Get sequence up to n-1
  next_number = prev[-1] + prev[-2]   # Compute next Fibonacci number
  prev + [next_number]                # Return new sequence
end

# ----------------------------
# Test Cases
# ----------------------------
puts 'Iterative Tests'
p fibs(0)    # => []
p fibs(1)    # => [0]
p fibs(2)    # => [0, 1]
p fibs(6)    # => [0, 1, 1, 2, 3, 5]
p fibs(8)    # => [0, 1, 1, 2, 3, 5, 8, 13]

puts "\nRecursive Tests"
p fibs_rec(0)    # => []
p fibs_rec(1)    # => [0]
p fibs_rec(2)    # => [0, 1]
p fibs_rec(6)    # => [0, 1, 1, 2, 3, 5]
p fibs_rec(8)    # => [0, 1, 1, 2, 3, 5, 8, 13]
