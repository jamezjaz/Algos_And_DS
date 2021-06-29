def findMedian(arr)
    sorted_arr = arr.sort
    len = sorted_arr.length
    
    (sorted_arr[(len-1)/2] + sorted_arr[len/2])/2
end

arr = [2, 3, 4];

puts findMedian(arr)