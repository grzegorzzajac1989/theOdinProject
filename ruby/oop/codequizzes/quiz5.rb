#!/usr/bin/ruby

daisy = Dog.new
puts daisy.speak()

###

class Penguin
	def looks()
		return("We are cute!")
	end
end

###

class Calculator
  def self.add(x, y)
    return(x + y)
  end
end

puts Calculator.add(3, 4)

###

class Celsius
  def initialize(temperature)
    @temperature = temperature
  end

  def to_fahrenheit()
    return(@temperature * 1.8 + 32)
  end
end

celsius = Celsius.new(10)
puts celsius.to_fahrenheit()