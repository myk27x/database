class Person
  attr_accessor :name, :phone, :address, :type

  def initialize (name, phone, address, type)
    self.name = name
    self.phone = phone
    self.address = address
    self.type = type
  end
end
