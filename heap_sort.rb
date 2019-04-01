def heap_sort(array)
  n = array.length - 1
  a = array
  
  n.downto(0) do |i|      
    create_max_heap(a, i, n) 
  end

  while n > 0
    a[0], a[n] = a[n], a[0]
    n -= 1
    create_max_heap(a, 0, n)
  end
  a
end
  
  
def create_max_heap(array, parent, limit)
  root = array[parent]
  # (child = 2 * parent) we are setting child to equal the left node
  while (child = 2 * parent) <= limit do
      # increment child by 1 ie move to right node if left node is less than limit and value at left node is less than value at right node. 
      child += 1 if child < limit && array[child] < array[child + 1]
      break if root >= array[child]
      array[parent], parent = array[child], child
  end
  array[parent] = root
end

arr = [8,2,16,3,9,1,3,20,7,19,5,101,3,17]
puts heap_sort(arr)