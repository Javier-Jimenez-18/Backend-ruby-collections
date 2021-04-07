# (3) Write a program with a function add_up(i) .  It is to be passed a
# positive integer, and it will add all the numbers from 1 to that integer
# and return the sum.  Call the function three times within the program,
# and each time print out the return value.  Call the program add_up.rb.

# define prompt method to prompt the user to enter an integer
def prompt(request, kind="number")
  print request + " "
  answer = gets.chomp.to_i
  return answer
end

# define a function add_up(i) that takes input parameter i (positive integer),
# and adds all the numbers from 1 to that integer and returns the sum
def add_up(i)
  # create sum variable and initialize to 0
  sum = 0

  # loop through integers from 1 to i, adding each and storing in sum
  for integer in 1..i do
    sum += integer
  end

  # return the sum of all integers
  return sum
end

# call the function add_up(i) three times
# and print out the return value for each integer entered
3.times do
  integer = prompt("Please enter a positive integer:")
  if integer > 0
    result = add_up(integer)
    puts "The sum from 1 to #{integer} is #{result}"
  end
end
