class Delete
  def remove(people)
    puts "Oooh... looks like someone got fired... we'll talk later..."
    puts "In the meantime... who are we removing from my cluttered system?"
    delete = gets.chomp.capitalize
    if delete.empty?
      puts "Wait, what? Let's try that again..."
    else
      people.each do |person|
        if person.name == delete
          people.delete(person)
          puts "Ok, say 'goodbye' to what's-their-name! LOLOLOL"
          return
        end
      end
      puts "Well, I can't find \"#{delete}\" so the problem just fixed itself... I guess..."
    end
  end
end
