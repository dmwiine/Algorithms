def quick_sort(array)
    return array if array.length <= 1
    pivot = array.delete_at(rand(array.length-1))
  
    left = []
    right = []
  
    array.each do |x|
      if x <= pivot
        left << x
      else
        right << x
      end
    end
  
    return quick_sort(left), pivot ,quick_sort(right)
end

array = [7,4,1,8,5,9]
sorted_array = quick_sort(array)
puts sorted_array