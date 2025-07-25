def caesar_cipher(phrase, shift)
  shifted_phrase = ''
  phrase.each_char do |char|
    if char.match?(/[a-z]/)
      # Changes character to ASSCI value, subtracts 'a' ASSCI value to get
      # position in alaphabet, adds shift, rounds to a if z, and Changes
      # to shifted character ASSCI value.
      shifted_char = ((char.ord - 'a'.ord + shift) % 26) + 'a'.ord # for lowercase
      shifted_phrase << shifted_char.chr # Adds character to shifted_phrase
    elsif char.match?(/[A-Z]/)
      shifted_char = ((char.ord - 'A'.ord + shift) % 26) + 'A'.ord # for uppercase
      shifted_phrase << shifted_char.chr
    else
      shifted_phrase << char # for special characters and spaces
    end
  end
  shifted_phrase
end

puts caesar_cipher('hello', 3)           # Expected: khoor
puts caesar_cipher('xyz', 5)             # Expected: cde
puts caesar_cipher('ruby', 30)           # Expected: vyfc
puts caesar_cipher('HelloWorld', 5)      # Expected: MjqqtBtwqi
puts caesar_cipher('Hello, World!', 5)   # Expected: Mjqqt, Btwqi!
puts caesar_cipher('NoShift', 0)         # Expected: NoShift
puts caesar_cipher('khoor', -3)          # Expected: hello
puts caesar_cipher('abcdefghijklmnopqrstuvwxyz', 13)
# Expected: nopqrstuvwxyzabcdefghijklm
