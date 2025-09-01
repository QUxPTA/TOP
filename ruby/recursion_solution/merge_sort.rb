# Merge Helper

def merge(left, right)
  result = []

  # Compare, while both arrays still have elements
  until left.empty? || right.empty?
    result << if left.first <= right.first
                left.shift # take from left
              else
                right.shift # take from right
              end
  end

  # Append leftovers (One is already empty)
  result + left + right
end

# Recursive merge_sort

def merge_sort(array)
  return array if array.length <= 1 # Base case

  mid = array.length / 2
  left_half = array[0...mid]
  right_half = array[mid..]

  sorted_left = merge_sort(left_half)
  sorted_right = merge_sort(right_half)

  merge(sorted_left, sorted_right)
end

#--------------------------------------------------------------------------
# Test Cases
#--------------------------------------------------------------------------
puts 'Merge Sort Tests'
p merge_sort([3, 2, 1, 13, 8, 5, 0, 1]) # => [0, 1, 1, 2, 3, 5, 8, 13]
p merge_sort([105, 79, 100, 110])       # => [79, 100, 105, 110]
p merge_sort([])                        # => []
p merge_sort([42])                      # => [42]
p merge_sort([5, 4, 3, 2, 1])           # => [1, 2, 3, 4, 5]
