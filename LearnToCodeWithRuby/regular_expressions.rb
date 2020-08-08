phrase = "The Ruby Programming Language is amazing!"

puts phrase.start_with?("The") # true

puts phrase.start_with?("the") # false
puts phrase.downcase.start_with?("the") # true

puts phrase.end_with("zing!") # true
puts phrase.end_with("amazing") # false

# -------------------------------------------------------------- #

phrase = "The Ruby Programming Language is amazing!"

puts phrase.include? 'Ruby' # true
puts phrase.include? 'Language' # true
puts phrase.include? '##' # false
puts phrase.include? '!' # true

# -------------------------------------------------------------- #

puts //.class # Regexp

phrase = 'The Ruby Programming Language is amazing!'

phrase =~ /T/ # 0 give me index position
phrase =~ /R/ # 4
phrase =~ /m/ # 15 first found
phrase =~ /./ # 0 any character found
phrase =~ / / # 4 first space
phrase =~ /x/ # nil
phrase =~ /anguage/ # 22 give me position of first letter 


voicemail = 'I can be reached at 555-123-4567 or regexman@gmail.com'

p voicemail.scan(/e/) # ["e", "e", "e", "e", "e"]
p voicemail.scan(/e/).length # 5

p voicemail.scan(/re/) # ["re", "re"]

p voicemail.scan(/[re]/) # ["e", "r", "e", "e", "r", "r", "e", "e"]

p voicemail.scan(/d/) # ["d"]
p voicemail.scan(/\d/) # ["5", "5", "5", "1", "2", "3", "4", "5", "6", "7"] give me any single digit
p voicemail.scan(/\d+/) # ["555", "123", "4567"]
voicemail.scan(/\d+/) { |digit_match| puts digit_match.length } # 3 3 4

phrase = 'The Ruby Programming Language is amazing and awe-inspiring.'

puts phrase =~ /./ # 0
puts phrase.scan(/./) # T
                      # h
                      # e
                      #
                      # R
                      # u
                      # b
                      # y
                      # continue

puts phrase.scan(/.am/) # ram  am -> give one position before "am"
puts phrase.scan(/.ing/) # ming zing ring

