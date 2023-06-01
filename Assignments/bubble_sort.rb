def bubble_sort(array)
  (0...array.length).each do |i|
    (0...array.length).each do |j|
      array[i], array[j] = array[j], array[i] if array[i] < array[j]
    end
  end
  array
end

p bubble_sort([4,3,78,2,0,2])
#=> [0,2,2,3,4,78]