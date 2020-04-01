
def palindrome_permutation?(string)
  # Write a method which takes a string as an argument and returns true if the letters could be re-arranged into a palindrome.


  return true if string == ""

  char_count_hash = {}

  string.each_char do |char|
    if char_count_hash.has_key?(char)
      char_count_hash[char] = char_count_hash[char] + 1
    else
      char_count_hash[char] = 1
    end
  end

  if (string.length % 2 == 0) #string is even or not?
    #remove all pairs for which the num of chars is even
    char_count_hash.reject! { |key, val| (val % 2 == 0) }
    #if the hash is empty, it passes.
    return char_count_hash.empty?
  else
    #remove all pairs for which the num of chars is even
    char_count_hash.reject! { |key, val| (val % 2 == 0) }
    #make sure there's only one pair left
    if char_count_hash.length == 1
      #if value is exactly 1, it passes.
      return char_count_hash.value?(1)
    else
      return false
    end
  end
end