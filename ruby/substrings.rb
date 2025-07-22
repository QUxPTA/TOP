def substrings(word, array)
  # Hash to be returned, with each substring and
  # number of times it appears
  substrings = Hash.new(0)
  # Make word case insensitive
  word = word.downcase
  array.each do |string|
    count = word.scan(string.downcase).length
    substrings[string] = count if count.positive?
  end
  substrings
end

# TEST CASES

dictionary = %w[below down go going horn how howdy it i low own part partner sit]
puts substrings('below', dictionary)
# Expected: { "below" => 1, "low" => 1 }
puts substrings('lowdown', dictionary)
# Expected: { "low" => 1, "down" => 1, "own" => 1 }
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
# Expected: { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2,
#             "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
puts substrings('BeLoW', dictionary)
# Expected: { "below" => 1, "low" => 1 }
puts substrings('xyzabc', dictionary)
# Expected: {}
puts substrings('go go go going', dictionary)
# Expected: { "go" => 3, "going" => 1 }
puts substrings('', dictionary)
# Expected: {}
