require 'benchmark'
iterations = 1000000

Benchmark.bm do |bm|
	bm.report("for:  ") do
		for i in 1..iterations do
			x = i
		end
	end
	bm.report("times:") do
		iterations.times do |i|
			x = i
		end
	end
end

# bm makes the results even easier to read and provides headings for each column.
#				user system total real
# for:
# times:


# bmbm : twice
