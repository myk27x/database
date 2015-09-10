class Person
  attr_accessor :name, :phone, :address, :type, :age

  def initialize (name, age, phone, address, type)
    self.name = name
    self.age = age
    self.phone = phone
    self.address = address
    self.type = type
  end
end
