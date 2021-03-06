class Run
  def run_database
    add_user = Add.new
    search_user = Search.new
    delete_user = Delete.new
    list_user = List.new
    people = []
    ## TESING ONLY
    people << Student.new("Michael", 34, "555-1212", "12 Fox St.", "Student", "myk27x", "myk27x")
    people << Student.new("Mark", 28, "555-1212", "26 Everest Wat", "Student", "msmith", "msmith")
    people << Employee.new("Gavin", 40, "555-1212", "260 1st Ave S", "Ruby Instructor", "Employee", "1,000,000", "2015", "gstark", "gstark")
    ## TESING ONLY
    puts "Welcome to the 'IronYard Database' where all your data are belong to us!"
    gets
    puts "What would you like to do today?"
    while true
      puts "Do you want to (A)dd a person, (S)earch for a person, or (D)elete a person."
      puts "Advanced user option: (L)ist all people,"
      action = gets.chomp.upcase
      case
      when action == "A"
        add_user.add(people)
      when action == "S"
        search_user.search(people)
      when action == "D"
        delete_user.remove(people)
      when action == "L"
        list_user.list(people)
      else
        puts "Wait, what? Let's try that again..."
      end
    end
  end
end
