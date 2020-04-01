
def permutations?(string1, string2)
  if string1 == "" && string2 == ""
    return true
  elsif string1.length != string2.length
    return false
  end

  char_count_hash = {}

  string1.each_char do |char|
    if char_count_hash.has_key?(char)
      char_count_hash[char] = char_count_hash[char] + 1
    else
      char_count_hash[char] = 0
    end
  end

  string2.each_char do |char|
    if char_count_hash.has_key?(char)
      if char_count_hash[char] == 0
        char_count_hash.delete(char)
      else
        char_count_hash[char] = char_count_hash[char] - 1
      end
    end
  end

  char_count_hash.empty? ? (return true) : (return false)
end