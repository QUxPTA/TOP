# Projects Overview

## 1. [Caesar Cipher](./caesar_cipher.rb)

**Description:**  
Implements a basic Caesar Cipher encryption algorithm. It shifts each letter of
a given string by a specified number of positions in the alphabet while
preserving case and ignoring non-alphabetic characters.

**Implementation Details:**

- Handles both uppercase and lowercase letters.
- Wraps around the alphabet (e.g., `z` becomes `c` with a shift of 3).
- Non-alphabetic characters remain unchanged.
- Accepts a custom shift value.

---

## 2. [Sub Strings](./sub_strings.rb)

**Description:**  
Analyzes a given string and returns a hash showing how many times words from a
dictionary are found in the string (case-insensitive).

**Implementation Details:**

- Input: A string and a dictionary array of words.
- Counts each occurrence of dictionary words (ignores case).
- Returns a hash with words as keys and their counts as values.

---

## 3. [Stock Picker](./stock_picker.rb)

**Description:**  
Finds the best days to buy and sell stocks for maximum profit given an array of
stock prices, where each index represents a day.

**Implementation Details:**

- Iterates through all possible buy/sell day combinations.
- Calculates maximum profit (difference between buy and sell price).
- Returns an array `[buy_day, sell_day]`.

---

## 4. [Bubble Sort](./bubble_sort.rb)

**Description:**  
Implements the bubble sort algorithm to sort an array of numbers in ascending order.

**Implementation Details:**

- Uses nested loops to compare and swap adjacent elements.
- Continues until no swaps are needed (optimized with a flag).
- Sorts in-place and handles any numeric array.

---

## 5. [Linked List](./linked_list/)

**Description:**
A basic implementation of a singly linked list data structure in Ruby.

**Implementation Details:**

- Supports operations like appending, prepending, searching, and removing nodes.
- Includes a `main.rb` for demonstration, with hard-coded test cases

---

## 6. [Recursion Solution](./recursion_solution/)

**Description:**
Contains implementations of recursive algorithms, including Fibonacci sequence
and Merge Sort.

**Implementation Details:**

- `Fibonacci.rb`: Calculates Fibonacci sequence using recursion
- `merge_sort.rb`: Implements the Merge sort algorithm using recursion

---
