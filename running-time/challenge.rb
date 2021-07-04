def running_time(array)
  j = 1
  c = 0
  while j < array.length
    arr = array[0..j]
    x = arr[-1]
    i = arr.length-1
    arr.reverse_each do |v|
      if i-1 >= 0 && arr[i-1]>x  
        arr[i] = arr[i-1]
        c+=1
      else
        arr[i] = x
        break;
      end
      i-=1
    end
    array[0..j] = arr
    j+=1
  end
  c
end

puts running_time([2, 1, 3, 1, 2])
# => 4
