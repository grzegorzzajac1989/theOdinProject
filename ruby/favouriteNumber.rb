# Write a program which asks for a person's favorite number. 
# Have your program add one to the number, 
# then suggest the result as a bigger and better favorite number.

puts 'Hi, what is your favourite number?'
number = gets.chomp
number_two = number.to_i + 1 
puts ''
puts 'Your number is ' + number.to_s + ', but i prefer ' + number_two.to_s + ' because is bigger and better.' 