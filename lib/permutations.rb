
def permutations?(string1, string2)
  # Write a method which will take two strings as arguments and returns true if one string is a permutation of the other.

  if string1 == "" && string2 == ""
    return true
  elsif string1.length != string2.length
    return false
  end

end