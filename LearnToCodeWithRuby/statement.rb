class Statement

  def self.teste
    if 5 < 7
      puts "That math statement is true!"
    end
  end

  def self.zebra
    word = "zebra"

    if word.include?("eb")
      puts "Is present!"
    end
  end

  if 5
    puts "Thats true"
  end

  if "A"
    puts "Thats true"
  end

  if nil
    puts "Thats false, only nil or false return false"
  end

  def self.authenticate_agent(rank, name, credentials)
    if (rank == "007" && name == "James Bond") || credentials == "Secret Agent"
      puts "Access granted, please proceed to Intelligence department!"
    else
      puts "Access denied, #{name}"
    end
  end

  def self.mail_plan(time_of_week)
    if time_of_week == "weekday"
      puts "Weekday"
    else
      puts "Something"
    end
  end
end

# ruby -r "./statement.rb" -e "Statement.teste"