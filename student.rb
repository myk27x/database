class Student < Person
  include Online

  def initialize (name, age, phone, address, type, slack, git)
    super(name, age, phone, address, type)
    online(slack, git)
  end

  def show
    puts "#{name} is a #{age} year old #{type}."
    puts "-contact info:"
    puts "--------phone:#{phone}"
    puts "------address:#{address}"
    puts "--------slack:#{slack}"
    puts "----------git:#{git}"
  end
end
