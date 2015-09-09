class Person
  attr_accessor :name, :age, :sex  # => nil

  def initialize(name, age, sex)
    self.name = name              # => "Joe", "Michael", "Amy", "Mark"
    self.age = age                # => 28, 34, 19, 32
    self.sex = sex                # => "M", "M", "F", "M"
  end
end

people = []  # => []

person=Person.new("Joe", 28, "M")      # => #<Person:0x007fbef3042068 @name="Joe", @age=28, @sex="M">
# p person
people << person                       # => [#<Person:0x007fbef3042068 @name="Joe", @age=28, @sex="M">]
# p people
person=Person.new("Michael", 34, "M")  # => #<Person:0x007fbef3041a78 @name="Michael", @age=34, @sex="M">
people << person                       # => [#<Person:0x007fbef3042068 @name="Joe", @age=28, @sex="M">, #<Person:0x007fbef3041a78 @name="Michael", @age=34, @sex="M">]

person=Person.new("Amy", 19, "F")  # => #<Person:0x007fbef30412a8 @name="Amy", @age=19, @sex="F">
people << person                   # => [#<Person:0x007fbef3042068 @name="Joe", @age=28, @sex="M">, #<Person:0x007fbef3041a78 @name="Michael", @age=34, @sex="M">, #<Person:0x007fbef30412a8 @name="Amy", @age=19, @sex="F">]

person=Person.new("Mark", 32, "M")  # => #<Person:0x007fbef30406f0 @name="Mark", @age=32, @sex="M">
people << person                    # => [#<Person:0x007fbef3042068 @name="Joe", @age=28, @sex="M">, #<Person:0x007fbef3041a78 @name="Michael", @age=34, @sex="M">, #<Person:0x007fbef30412a8 @name="Amy", @age=19, @sex="F">, #<Person:0x007fbef30406f0 @name="Mark", @age=32, @sex="M">]

name = "Amy"  # => "Amy"

def search(name, people)
  # Go through all the people
  people.each do |person|   # => [#<Person:0x007fbef3042068 @name="Joe", @age=28, @sex="M">, #<Person:0x007fbef3041a78 @name="Michael", @age=34, @sex="M">, #<Person:0x007fbef30412a8 @name="Amy", @age=19, @sex="F">, #<Person:0x007fbef30406f0 @name="Mark", @age=32, @sex="M">]
    # if the name matches ...
    if person.name == name  # => false, false, true
      # ... then return this person
      return person         # => #<Person:0x007fbef30412a8 @name="Amy", @age=19, @sex="F">
    end
  end

  # Nothing in the array matched, return nil
  return nil
end

search("Amy", people)  # => #<Person:0x007fbef30412a8 @name="Amy", @age=19, @sex="F">
person.name            # => "Mark"
