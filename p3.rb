# frozen_string_literal: true
# ruby --enable-frozen-string-literal-debug script.rb
require 'benchmark'
require 'pry'
require 'set'
require 'prime'

############## 
## Problem
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?



############## 
## Result
# Ans = 6857
# real	0m7.600s
# user	0m7.501s
# sys	0m0.068s


############## 
## Methods

def highest_prime_factorial(x)
	for i in 2..(x/2)
		if x % (x/i) == 0
			abort((x/i).to_s) if (x/i).prime?
		end
	end
end


time1 = Benchmark.measure do
	highest_prime_factorial(600851475143)
end

time2 = Benchmark.measure do
	
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