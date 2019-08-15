def map (array, num = 1)
	new_a =  []
	i = 0
	while i < array.length do
		new_a.push(yield(array[i], num))
		i += 1
	end
  return new_a
end
	map ([1,2,3]){|value, multiple| value *= multiple}
  def reduce (array, starting_point = 0)
    i = 0
  	sum = starting_point
    neutral = false
    while i < array.length do
    	sum = yield(array[i], sum)
      if array[i] == true
        neutral = true
      end
      i += 1
    end
    return neutral
    return sum
  end
    reduce([1,2,3]){ |x, n| x + n }
