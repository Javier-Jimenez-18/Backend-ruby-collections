# (4) Write a program, leap_year.rb.  It will ask the user for a starting year and
# an ending year, and it will then print out all the leap years between them,
# including the starting or ending year if those are leap years. The rules for
# leap years are: A leap year is divisible by 4, except for years that are divisible
# by 100 -- those aren't leap years -- except for years that are divisible by 400,
# which ARE leap years.

# define ask method to ask the user questions
def ask(question, kind="number")
  print question + " "
  answer = gets.chomp.to_i
  return answer
end

# define display_leap_years method to display all of the leap years
# between the start and end year
def display_leap_years

  # ask the user to enter a start and end year
  start_year = ask("What is your start year?")
  end_year = ask("What is your end year?")

  # create leap_years output array to store all of the leap years
  leap_years = []

  # loop through every year from start year to end year and copy only
  # the leap year to the output leap_years array
  for year in start_year..end_year do
    if (year % 4 == 0 && year % 100 != 0 || year % 400 == 0)
        leap_years.push(year)
    end
  end
  # print to display the contents of leap_years
  puts "These are all of the leap years between #{start_year} and #{end_year}:"
  puts leap_years
end

# call display_leap_years method
display_leap_years
