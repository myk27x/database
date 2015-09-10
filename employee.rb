class Employee < Person
  include Online
  attr_accessor :position, :salary, :date_hired

  def initialize (name, age, phone, address, type, position, salary, date_hired, slack, git)
    super(name, age, phone, address, type)
    self.position = position
    self.salary = salary
    self.date_hired = date_hired
    online(slack, git)
  end

  def show
    puts "#{name} is a #{age} year old #{position} who has been with us since #{date_hired}."
    puts "-contact info:"
    puts "--------phone:#{phone}"
    puts "------address:#{address}"
    puts "--------slack:#{slack}"
    puts "----------git:#{git}"
    puts "------ **EMPLOYER ONLY INFO**"
    puts "-------------:#{type}"
    puts "--------hired:#{date_hired}"
    puts "--------title:#{position}"
    puts "-------salary:#{salary}"
  end
end
