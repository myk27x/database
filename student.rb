class Student < Person
  include Online

  def initialize (name, phone, address, type, slack, git)
    super(name, phone, address, type)
    online(slack, git)
  end

  def show
    puts "Here's all the info I have for #{name}:"
    puts "#{name} is a #{type}."
    puts "-------contact info:"
    puts "----phone:#{phone}"
    puts "--address:#{address}"
    puts "----slack:#{slack}"
    puts "------git:#{git}"
  end
end
