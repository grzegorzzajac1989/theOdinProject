# Solution 1

arr = [2.5, 6.4, 4.2, 12.9]
arr.each_index do |idx|
    arr[idx] = arr[idx].round
end   
puts arr.join(',')

# Solution 2

puts [2.5, 6.4, 4.2, 12.9].map{ |v| v.round }.join(',')