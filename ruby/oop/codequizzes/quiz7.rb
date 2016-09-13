#!/usr/bin/ruby

class	Dog
	def initialize(name)
		@name = name
	end

	def bark()
		return("Ruff ruff")
	end

end

greg = Dog.new("Greg")
greg.bark()

######

class Insect
  def initialize(age_in_days)
    @age_in_days = age_in_days
  end

  def age_in_years()
  	return (@age_in_days.to_f / 365)
  end
end

####

class	Lamp
	def self.about_me
		return("We brighten up people's lives")
	end
end

############

class WaterBottle
  def initialize(size)
    @size = size
  end

  def size
  	return(@size)
  end
end

niuu = WaterBottle.new(100)
niuu.size()

############

class	Person
	def initialize(age)
		@age = age
	end

	def age=(new_age)
		@age = new_age
	end

	def age
		return(@age)
	end
end

greg = Person.new(7)
greg.age
greg.age=(27) # update
greg.age

########

# greg = Person.new()
# greg.say_something()
# gregozaur = Alien.new()
# gregozaur.say_something()

#####

module MathHelper
	def multiply_by_two(number)
		puts "#{number*2}"
	end
end

class Homework
	include MathHelper
end	

exercise = Homework.new()
exercise.multiply_by_two(5)

#####

class BaseballPlayer
	def initialize(hits, walks, at_bats)
		@hits = hits
		@walks = walks
		@at_bats = at_bats
	end

	def batting_avarage()
		return(@hits.to_f / @at_bats)
	end

	def on_base_percentage()
		return((@hits + @walks).to_f / @at_bats)
	end
end

greg = BaseballPlayer.new(10,20,30)
greg.batting_avarage()
greg.on_base_percentage()

#####

class Person
	def initialize(first_name, last_name)
		@first_name = first_name
		@last_name = last_name
	end

	def first_name()
		return(@first_name)
	end

	def last_name()
		return(@last_name)
	end

	def full_name()
		return("#{@first_name} #{@last_name}")
	end
end

greg = Person.new("Grzegorz", "Zajac")
greg.full_name()

####

module MathHelpers
	def expontent(arr1, arr2)
		return(arr1 ** arr2)
	end
end

class Calculator
	include MathHelpers

	def square_root(arr3)
		return(expontent(arr3, 0,5))
	end
end

calc = Calculator.new
calc.square_root(4)