# The main loop of the application should show a menu of options to the user to include at least: Add a person, Search for a person, Delete a person
# HINT: Show the list of options and allow the user to enter A for Add, S for Search and D for Delete

def run_database
puts "Welcome to the 'IronYard Database' where all your data are belong to us!"
gets
puts "What would you like to do today?"
puts "You can (A)dd a person, (S)earch for a person, or (D)elete a person."
action = gets.chomp.upcase
case
  # When adding a person, prompt if the person is an employee or student and create the right type of person
when action = "A"
  puts "Ok. Is this an (E)mployee or (S)tudent?"
  type = gets.chomp.upcase
    if type = "E"
    elsif type = "S"
    else ##make loop TODO
when action = "S"
when action = "D"
else ##make loop TODO

end


# For an employee track the following information: Name, Phone number, Address, Position, Salary, Date Hired, Slack Account, Github Account

# For a student track the following information: Name, Phone number, Address, Slack Account, Github Account

# When searching for a person, prompt for the name and search for an exact match

# If the person is found, show all their relevant information.

# Show the information in a nice presentation.

# Employees should show, via a method, Has been a PPPP for at least YYYY years where PPPP is their position and YYYY is how many years they have held that position.

# If a person is not found, inform the user

# When deleting a person, prompt for the name and search for an exact match. If found, delete the person, otherwise tell the user there wasn't a match.

# Requirement: Your system must keep a single array holding all of the people.

# Hint: Use classes, inheritance, and maybe even modules to your advantage
