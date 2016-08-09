#write your code here
def echo(string)
	string
end

def shout(string)
	string.upcase
end

# def repeat(string)
# 	return string + " " + string
# end

def repeat (string, n=2)
	result = ""
	n.times{result += string + " "}
	return result.chomp(" ")
end

def start_of_word(word,n)
	return word[0..(n-1)]
end

def first_word(a)
	return a.split[0]
end

def titleize(word)
	parse = ""
	little = ['the', 'and', 'over']
	
	#Seems inefficient but breaks up and capitalizes and sets the words in a string
	word.split.each do |i|
		if little.include?(i)
			parse += i.downcase + " "
		else
			parse += i.capitalize + " "
		end
	end

	parse[0] = parse[0].upcase #Manually upcases the 1st char
	return parse[0...-1]
end