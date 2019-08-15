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
    result = nil
    while i < array.length do
    	sum = yield(array[i], sum)
			if array[i] != nil
      	if array[i] == true
        	result = true
				elsif array[i] == false
					result = false
				end
      end
      i += 1
    end
	   if result == false || result == true
       return result
	    else
		   return sum
	    end
  end

  reduce([1,2,3]){ |x, n| x + n }
