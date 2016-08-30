def print_list(array, first = 1)
  counter = first
  array.each do |item|
    puts "#{yield counter}. #{item}"
    counter = counter.next
  end
end

print_list(["C", "R", "C#", "Ruby"], 9) { |n| "(#{n*50})" }

