#!/usr/bin/ruby

def bubble_sort(array)
  #external loop
  for i in 1...(array.length) do
  	#internal loop
	for i in 1...array.length do
	  #compare
	  if array[i-1] > array[i]
	  	#swap
		array[i-1], array[i] = array[i], array[i-1]		
	  end
	end
  end
puts array
end

bubble_sort([4,3,78,2,0,2])