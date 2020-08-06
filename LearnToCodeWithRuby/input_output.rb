File.open("novel.txt").each do |line|
  puts line
end

File.open("myFirstFile.txt", "a") do |file|
  file.puts "I'm creating this from Ruby!"
  file.print "No Line break here!"
  file.puts "Pretty cool!"
end

# ------------------------------------------- #
File.rename("myFirstFile.txt", "somethingBetter.txt")

File.delete("somethingBetter.txt")

if File.exist?("myFirstFile.txt")
  File.delete("myFirstFile.txt")
end


ARGV.each do |argument|
  number = argument.to_i
  puts "The square of #{number} is #{number ** 2}"
end
