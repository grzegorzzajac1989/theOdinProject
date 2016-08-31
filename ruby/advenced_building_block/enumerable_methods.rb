#!/usr/bin/ruby

module Enumerable
	def my_each
		for i in 0...self.length
			yield(self[i])
		end
	end

	def my_each_with_index
		for i in 0...self.length
			yield(self[i], i)
		end
	end

	def my_select
		self.my_each do |i|
			puts i if yield(i) == true
		end
	end

	def my_all?
		my_all = []
		self.my_each do |i|
			if yield(i) == false
				my_all << i
			end
		end
			if my_all.length == 0
				puts true
			else
				puts false
			end
	end

	def my_any?
		my_any = []
		self.my_each do |i|
			if yield(i) == true
				my_any << i
			end
		end
			if my_any.length == 0
				puts false
			else
				puts true
			end
	end

	def my_none?
		my_none = []
		self.my_each do |i|
			if yield(i) == true
				my_none << i
			end
		end
		if my_none.length == 0
			puts true
		else
			puts false
		end
	end

	def my_count(var=nil)
		if var != nil
			arr = 0
			self.my_select do |i|
				if i == var
					arr += 1
				end
			end
			puts arr
		else
			puts self.size
		end
	end

	def my_map1
		arr = []
		self.my_each do |i|
				arr << yield(i)
		end
		puts arr
	end

	def my_map2()
		arr = []
		if proc
			self.my_each do |i|
				arr << proc.call(i)
			end
		end
		puts arr
	end

	def my_map(proc=nil)
		arr = []
		if block_given?
			self.my_each do |i|
				arr << yield(i)
			end
		elsif proc
			self.my_each do |i|
				arr << proc.call(i)
			end
		end
		puts arr
	end

	def my_inject(var=nil)
		self.my_each do |i|
			var = yield(var, i)
		end
		puts var
	end
end

def multiply_els(array)
	array.my_inject(1) {|running, item| running*item}
end

# [1,2,3,4,5].my_each {|test| puts test}
# [1,2,3,4,5].my_each_with_index {|test, index| puts test+10 if index % 2 == 0}
# [1,2,3,4,5].my_select {|test| test > 3}
# [1,2,3,4,5].my_all? {|test| test > 0}
# [1,2,3,4,5].my_any? {|test| test > 0}
# [1,2,3,4,5].my_none? {|test| test > 6}
# [1,1,2,3,4,5].my_count(1)
# [1,2,3,4,5].my_map1 {|test| "#{test}!"}

# my_proc = Proc.new {|number| "@#{number}"}
# [1,2,3,4,5].my_map2(&my_proc)

# [2,3].my_inject(4) {|running, item| running * item}
#multiply_els([2,4,5])