def intersection(list1, list2)
  # Design and implement a method that takes two integer arrays with unique values and returns their intersection in a new array.
  num_hash = {}

  list1.each do |num|
    num_hash[num] = 0
  end

  intersection_array = []

  list2.each do |num|
    if num_hash.has_key?(num)
      intersection_array << num
    end
  end
  return intersection_array
end