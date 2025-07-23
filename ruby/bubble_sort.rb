def bubble_sort(array)
  # After each pass, the largest unsorted element moves to its correct position,
  # therefore, we iterate to length - 1
  n = array.length
  (n - 1).times do
    # For each pass, we compare adjacent elements
    (0...(n - 1)).each do |i|
      # 1. Compare array[i] with array[i+1]
      # 2. If array[i] > array[i+1], swap them
      array[i], array[i + 1] = array[i + 1], array[i] if array[i] > array[i + 1]
    end
  end
  array
end

# ---------------------------
# TEST CASES
# ---------------------------

# TEST 1: Basic example
p bubble_sort([4, 3, 78, 2, 0, 2])
# Expected: [0, 2, 2, 3, 4, 78]

# TEST 2: Already sorted array
p bubble_sort([1, 2, 3, 4, 5])
# Expected: [1, 2, 3, 4, 5]

# TEST 3: Reverse sorted array
p bubble_sort([5, 4, 3, 2, 1])
# Expected: [1, 2, 3, 4, 5]

# TEST 4: Array with duplicates
p bubble_sort([2, 3, 2, 1, 3])
# Expected: [1, 2, 2, 3, 3]

# TEST 5: Single element array
p bubble_sort([42])
# Expected: [42]

# TEST 6: Empty array
p bubble_sort([])
# Expected: []
