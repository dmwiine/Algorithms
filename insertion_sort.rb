def insertion_sort(array)
    return array if array.length <= 1 
    array.length.times do |j|
        while j > 0
            if array[j-1] > array[j]
                array[j-1],array[j] = array[j],array[j-1]
            else
                break
            end
            j-=1
        end
    end
    array
end

array = [7,4,1,8,5,9]
sorted_array = insertion_sort(array)
puts sorted_array