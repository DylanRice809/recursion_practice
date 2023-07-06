def split_in_half (array, output_array=[])
  output_array[0] = array[0..(array.length/2)-1]
  output_array[1] = array[(array.length/2)..array.length-1]
  output_array
end

def merge (array_1, array_2, output_array=[])
  x = 0
  y = 0
  while (x < array_1.length && y < array_2.length)
    if (array_1[x] < array_2[y])
      output_array << array_1[x]
      x += 1
    else
      output_array << array_2[y]
      y += 1
    end
  end
  if (x < y)
    while (x < array_1.length)
      output_array << array_1[x]
      x += 1
    end
  else
    while (y < array_2.length)
      output_array << array_2[y]
      y += 1
    end
  end
  output_array
end

def merge_sort (array)
  if (array.length < 2)
    return array
  else
    output_array = []
    one = merge_sort(split_in_half(array)[0])
    two = merge_sort(split_in_half(array)[1])
  end

  output_array = merge(one, two)
  output_array
end

p merge_sort([8,1,4,5,2,10,3,7,6,9])