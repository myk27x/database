class Search
  def search(people)
    puts "Who would you like to find?"
    find = gets.chomp.capitalize
    if find.empty?
      puts "Wait, what? Let's try that again..."
    else
      people.each do |person|
        if person.name == find
          person.show
          return
        end
      end
      puts "I'm sorry, I can't find #{find}. Are you sure you didn't want to add them?"
    end
  end
end
