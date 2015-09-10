class Search
  def search(people)
    puts "Would you like to search by (N)ame, (P)osition, (S)lack account, or (G)itHub account?"
    find = gets.chomp.capitalize
      if find.empty?
          puts "Wait, what? Let's try that again..."
      elsif find == "G"
        puts "Which GitHub account are you looking for?"
        find = gets.chomp
        people.each do |person|
          if person.git == find
            puts person.name
            return
          end
        end
      elsif find == "S"
        puts "Which Slack account are you looking for?"
        find = gets.chomp
        people.each do |person|
          if person.slack == find
            puts person.name
            return
          end
        end
      elsif find == "P"
        puts "Which position are you looking for?"
        find = gets.chomp
        people.each do |person|
          if person.position == find
            person.name
            return
          end
        end
      elsif find == "N"
        puts "Which name are you looking for?"
        find = gets.chomp.capitalize
        people.each do |person|
          if person.name == find
            person.show
            return
          end
        end
      end
      puts "I'm sorry, I can't find a match right now..."
    end
  end
# end
