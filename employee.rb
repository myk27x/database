class Employee < Person
  include Online
  attr_accessor :position, :salary, :date_hired

  def initialize (name, phone, address, position, type, salary, date_hired, slack, git)
    self.position = position
    self.salary = salary
    self.date_hired = date_hired
    super(name, phone, address, type)
    online(slack, git)
  end

  def show
    puts "#{name} has been a #{position} with us since #{date_hired}."
    puts "-------contact info:"
    puts "----phone:#{phone}"
    puts "--address:#{address}"
    puts "----slack:#{slack}"
    puts "------git:#{git}"
    puts "----- **EMPLOYER ONLY INFO**"
    puts "---------:#{type}"
    puts "----hired:#{date_hired}"
    puts "----title:#{position}"
    puts "---salary:#{salary}"
  end
end
