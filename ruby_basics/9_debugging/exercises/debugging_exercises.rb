# First, we're going to practice reading the Stack Trace
# Don't look at this method prior to running the test
# Type 'rspec' into the terminal to run Rspec
# Once this test fails, have a look at the Stack Trace
# Try to see if you can work your way from the last line, the bottom of the stack
# To the top, the first line, where the error occured, and ONLY THEN fix the error

def decrement_smallest_value(nested_array)

  # simpler steps to accomplish the same result
  #flattened_array = nested_array.flatten.sort
  #flattened_array[0] - 1

  smallest_value = nested_array.flatten.max # retrieving the highest integer value
  nested_array.each do |array|
    array.each do |current_value| # iterate through each nested element
      if smallest_value > current_value # syntax error, missing e at end
        smallest_value = current_value
      end
    end
  end
  smallest_value -= 1  
end

# use the stack trace to debug the following method
# Don't look at this method prior to running the test
# Run rspec, let the test fail, and go through the stack trace again
def increment_greatest_value(nested_array)

  # simpler steps to accomplish the same result
  #greatest_value = nested_array.flatten.sort
  #greatest_value[-1] + 1

  greatest_value = nested_array.flatten.min
  nested_array.each do |array|
    array.each do |current_value|
      if greatest_value < current_value # changed nil to current_value
        greatest_value = current_value
      end
    end
  end
  greatest_value += 1
end

# This next exercise might look familiar
# Use p and puts in order to find what's wrong with our method

def isogram?(string)
  original_length = string.length # length of string parameter
  string_array = string.downcase.split("") # transform string to lowercase then turns it into an array
  unique_length = string_array.uniq.length # removes duplicate values from array and finds the length
  original_length == unique_length # comparison returns boolean
end

# Can you guess what's next?
# That's right! The final exercise from the lesson, which we'll debug with pry-byebug
# Try to avoid looking at the problem too much, let's rely on pry to fix it
# First, include require 'pry-byebug' at the top of this page
# Next insert plenty of breakpoints, and see if you can tell where things break
# Once you find the error, fix it and get the test to pass

def yell_greeting(string)
  name = string
  name = name.upcase
  greeting = "WASSAP, #{name}!"
  greeting
end
