def bubble_sort(array)
  sorted = false
  until sorted
    sorted = true
    array.each_with_index do |el, i|
      if i < array.length - 1
        if array[i+1] < el
          array[i] = array[i+1]
          array[i+1] = el
          sorted = false
        end
      end
    end 
  end
  return array
end

array = [4,3,78,2,0,2]
array_2 = [10,9,8,7,6,5,4,3,2,1,0,-1]
bubble_sort(array)
bubble_sort(array_2)