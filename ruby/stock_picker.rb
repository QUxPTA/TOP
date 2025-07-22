def stock_picker(stock_prices_array)
  # Variables to track, min price, & day
  # max profit and best days to buy and sell
  min_price = stock_prices_array[0]
  min_day = 0
  max_profit = 0
  best_days = [0, 0]

  stock_prices_array.each_with_index do |price, day|
    if price < min_price
      min_price = price
      min_day = day
    end
    profit = price - min_price
    if profit > max_profit
      max_profit = profit
      best_days = [min_day, day]
    end
  end
  best_days
end

# ---------------------------
# TEST CASES
# ---------------------------

# TEST 1: Standard example
p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
# Expected: [1, 4] (buy at 3, sell at 15, profit = 12)

# TEST 2: All decreasing prices
p stock_picker([10, 9, 8, 7, 6, 5, 4, 3, 2, 1])
# Expected: [0, 0] (no profit possible)

# TEST 3: Best buy late, best sell later
p stock_picker([5, 6, 3, 2, 10, 1, 15])
# Expected: [5, 6] (buy at 1 on day 5, sell at 15 on day 6, profit = 14)

# TEST 4: Single price
p stock_picker([5])
# Expected: [] (no trade possible)

# TEST 5: Empty array
p stock_picker([])
# Expected: [] (no trade possible)
