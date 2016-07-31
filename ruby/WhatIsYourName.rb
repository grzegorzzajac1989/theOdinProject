# Write a program which asks for a person's first name, 
# then middle, then last. 
# Finally, it should greet the person using their full name.

puts 'Hello there, what\'s your fist name?'
first_name = gets.chomp
puts 'And what\'s your middle name?'
middle_name = gets.chomp
puts 'And what\'s your last name?'
last_name = gets.chomp
puts 'Your name is ' + first_name + ' ' + middle_name + ' ' + last_name + '?  What a lovely name!'
puts 'Pleased to meet you, ' + first_name + ' ' + middle_name + ' ' + last_name + '.  :)' 