#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'libraryFine' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. INTEGER d1
#  2. INTEGER m1
#  3. INTEGER y1
#  4. INTEGER d2
#  5. INTEGER m2
#  6. INTEGER y2
#

def libraryFine(d1, m1, y1, d2, m2, y2)
    if y2==y1 && m2==m1 && d1>d2
        return (d1-d2)*15
    elsif y2==y1 && m1>m2
        return (m1-m2)*500
    elsif y1>y2
        return  10000
    else
        return 0
    end
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

first_multiple_input = gets.rstrip.split

d1 = first_multiple_input[0].to_i

m1 = first_multiple_input[1].to_i

y1 = first_multiple_input[2].to_i

second_multiple_input = gets.rstrip.split

d2 = second_multiple_input[0].to_i

m2 = second_multiple_input[1].to_i

y2 = second_multiple_input[2].to_i

result = libraryFine d1, m1, y1, d2, m2, y2

fptr.write result
fptr.write "\n"

fptr.close()