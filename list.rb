class List
  def list(people)
    if people.empty?
      puts "Hey, there's nobody here!"
    else
      people.select do |person|
        puts "#{person.name} is a #{person.type}."
      end
    end
  end
end
