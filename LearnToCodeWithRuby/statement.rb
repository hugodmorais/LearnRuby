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
end

# ruby -r "./statement.rb" -e "Statement.teste"