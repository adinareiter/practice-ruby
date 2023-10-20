require "tty-prompt"
question = TTY::Prompt.new
age = question.ask("How old are you?")
# puts "You are #{age} years old!"
birth_month = question.select("When is your birthday?", %w(January February March April May June July August September Octobter November December))
# puts "Your birthday is in #{birth_month}!"
vacation = question.ask("Where is your favorite vacation spot?")
age2 = age.to_i + 1
puts "When you turn #{age2}, you should celebrate by going to #{vacation} in #{birth_month}!"
