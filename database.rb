module Online
  attr_accessor :slack, :git

  def online (slack, git)
    self.slack = slack
    self.git = git
  end

end

class Person
  attr_accessor :name, :phone, :address

  def initialize (name, phone, address)
    self.name = name
    self.phone = phone
    self.address = address
  end
end

class Employee < Person
  include Online
  attr_accessor :position, :salary, :date_hired

  def initialize (name, phone, address, position, salary, date_hired, slack, git)
    self.position = position
    self.salary = salary
    self.date_hired = date_hired
    super(name, phone, address)
    online(slack, git)
  end

end

class Student < Person
  include Online

  def initialize (name, phone, address, slack, git)

    super(name, phone, address)
    online(slack, git)
  end
end

def run_database
  people = [ ]
  puts "Welcome to the 'IronYard Database' where all your data are belong to us!"
  gets
  puts "What would you like to do today?"
  while true
    puts "Do you want to (A)dd a person, (S)earch for a person, or (D)elete a person."
    action = gets.chomp.upcase
    case
    when action == "A"
      puts "Ok. Are we adding an (E)mployee or a (S)tudent?"
      type = gets.chomp.upcase
      if type == "E"
        puts "Great... a FuNewGi..." ## make a method for this elsewhere? TODO
        puts "What is our new employee's name?"
        name = gets.chomp.capitalize
        puts "What is #{name}'s phone number?"
        phone = gets.chomp
        puts "What is #{name}'s address?"
        address = gets.chomp
        puts "What is #{name}'s official position?"
        position = gets.chomp
        puts "...and how much are we paying #{name}?"
        salary = gets.chomp
        puts "When did #{name} start working with us?"
        date_hired = gets.chomp
        puts "What is #{name}'s Slack Account username?"
        slack = gets.chomp
        puts "What is #{name}'s GitHub Account username?"
        git = gets.chomp
        person = Employee.new(name, phone, address, position, salary, date_hired, slack, git)
        people << person
## debug starts
        p person
        p person.name
        p person.phone
        p person.address
        p person.position
        p person.salary
        p person.date_hired
        p person.slack
        p person.git
        puts people
## debug ends
      elsif type == "S"
        puts "Fresh blood... excellent..."
        puts "What is our new student's name?"
        name = gets.chomp.capitalize
        puts "What is #{name}'s phone number?"
        phone = gets.chomp
        puts "What is #{name}'s address?"
        address = gets.chomp
        puts "What is #{name}'s Slack Account username?"
        slack = gets.chomp
        puts "What is #{name}'s GitHub Account username?"
        git = gets.chomp
        person = Student.new(name, phone, address, slack, git)
        people << person
        p person
        p person.name
        p person.phone
        p person.address
        p person.slack
        p person.git
        p people
      else ##make loop                                                          TODO
      end
    when action == "S"  ## make a method for this elsewhere                     TODO
      puts "Who would you like to find?"
      find = gets.chomp.capitalize
      search(people, find)
    when action == "D"
    else
      exit
    end ##make loop TODO
  end
end

def search(people, find)
  people.each do |person|
    if person.name == find
      puts person.name
    else
      puts "I'm sorry, I can't find #{find}. Are you sure you didn't want to add them?"
    end
  end
end

run_database
# When searching for a person, prompt for the name and search for an exact match
# If the person is found, show all their relevant information.

# Show the information in a nice presentation.

# Employees should show, via a method, Has been a PPPP for at least YYYY years where PPPP is their position and YYYY is how many years they have held that position.

# If a person is not found, inform the user

# When deleting a person, prompt for the name and search for an exact match. If found, delete the person, otherwise tell the user there wasn't a match.

# Requirement: Your system must keep a single array holding all of the people.

# Hint: Use classes, inheritance, and maybe even modules to your advantage
