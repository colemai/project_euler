# frozen_string_literal: true
# ruby --enable-frozen-string-literal-debug script.rb
require 'benchmark'
require 'pry'
require 'set'

############## 
## Result
## time3 is the fastest

time1 = Benchmark.measure do
	def sum_3_5(no)
		multiples = Set.new
		final = 0

		max_3_mult = (no-1)/3
		max_5_mult = (no-1)/5

		for number in 1..max_3_mult
			multiples << (number * 3)
		end

		for number in 1..max_5_mult
			multiples << (number * 5)
		end

		multiples.each {|f| final += f}
		puts final
	end
	sum_3_5(100000)
end

############## 
## Methods

time2 = Benchmark.measure do
  	def sum_3_5(no)
		multiples = Array.new
		final = 0

		max_3_mult = (no-1)/3
		max_5_mult = (no-1)/5

		for number in 1..max_3_mult
			multiples << (number * 3)
		end

		for number in 1..max_5_mult
			multiples << (number * 5)
		end

		multiples.uniq!

		multiples.each {|f| final += f}
		puts final
	end
	sum_3_5(100000)
end

time3 = Benchmark.measure do
	def sum_3_5(no)
		final = 0
		for i in 1..(no-1)
			final += i if (i % 3 == 0 or i % 5 == 0)
		end
		puts final
	end
	sum_3_5(100000) 
end

############## 
## Call Methods

# puts "Time1 #{time} vs Time2 #{time2}"
for time in local_variables
	if time =~ /time/
		puts time
		puts eval(time.to_s)
	end
end