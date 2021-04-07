# (2) Write a program called sorted_words.rb.  It should prompt the user for
# words and add each to an array.  The user should be able to add as many words
# as they like, until they just hit enter to return a blank word. Then sort the
# array using the sort method and print it out.

# define prompt method to prompt the user to enter words
def prompt(request, kind="string")
  print request + " "
  answer = gets.chomp
  return answer
end

# define a sort_words method that sorts the words entered by the user
def sort_words
  # create words array to store all words entered by the user
  words = []

  # loop to keep prompting the user to enter a new word
  # until user just hits enter to return a blank word
  loop do
    word = prompt("Please enter a word:")
    if word == ""
      break
    end
    # capitalize each word using capitalize method and store in words array
    words.push(word.capitalize)
  end

  # sort the words in words array using sort method and print to terminal
  puts "Here are the sorted words:"
  puts words.sort
end

# call the sort_words method
sort_words
