# frozen_string_literal: true
# ruby --enable-frozen-string-literal-debug script.rb
require 'benchmark'
require 'pry'
require 'set'

############## 
## Problem


############## 
## Result


############## 
## Methods

time1 = Benchmark.measure do
	# code here
end

time2 = Benchmark.measure do
	# code here
end

time3 = Benchmark.measure do
	# code here
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