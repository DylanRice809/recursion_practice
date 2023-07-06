def merge_sort (array)
  if (array.length < 2)
    return array
  else
    p array[0..((array.length)/2)-1]
    merge_sort(array[0..((array.length)/2)-1])
    p array[array.length-(array.length/2)-1..(array.length-1)]
    merge_sort(array[array.length-(array.length/2)..(array.length-1)])
  end
end

merge_sort([6,2,8,12,3,9,0])