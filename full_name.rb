# (1) Write a program which asks for a person's first name, then middle, then last.
# It should store each of these parts in an array. Finally, it should greet the
# person using their full name.  Call the program full_name.rb.

# define ask method to ask the user questions
def ask(question, kind="string")
  print question + " "
  answer = gets.chomp
  return answer
end

# define a method that greets the user using their full name
def full_name_greeting
  # create full_name array
  full_name = []

  # ask the user for their first name, middle name, and last name
  # and store in full_name array
  full_name.push(ask("What is your first name?"))
  full_name.push(ask("What is your middle name?"))
  full_name.push(ask("What is your last name?"))

  # print to display a greeting to the user using their full name
  puts "\nGreetings and welcome #{full_name[0]}" + " #{full_name[1]}" + " #{full_name[2]}!"
end

# call full_name_greeting method
full_name_greeting
