class Add
  def add(people)
    puts "Ok. Are we adding an (E)mployee or a (S)tudent?"
    which = gets.chomp.upcase
    if which == "E"
      type = "Employee"
      puts "Great... a FuNewGi..."
      puts "What is our new employee's name?"
      name = gets.chomp.capitalize
      people.each do |person|
        if person.name == name
          puts "I already have #{name} in here."
          return
        end
      end
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
      person = Employee.new(name, phone, address, position, type, salary, date_hired, slack, git)
      people << person
    elsif which == "S"
      type = "Student"
      puts "Fresh blood... excellent..."
      puts "What is our new student's name?"
      name = gets.chomp.capitalize
      people.each do |person|
        if person.name == name
          puts "I already have #{name} in here."
          return
        end
      end
      puts "What is #{name}'s phone number?"
      phone = gets.chomp
      puts "What is #{name}'s address?"
      address = gets.chomp
      puts "What is #{name}'s Slack Account username?"
      slack = gets.chomp
      puts "What is #{name}'s GitHub Account username?"
      git = gets.chomp
      person = Student.new(name, phone, address, type, slack, git)
      people << person
    else
      puts "Wait, what? Let's try that again..."
    end
  end
end
