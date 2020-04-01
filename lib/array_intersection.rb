def intersection(list1, list2)
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