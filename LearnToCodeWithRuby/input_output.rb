File.open("novel.txt").each do |line|
  puts line
end

File.open("myFirstFile.txt", "a") do |file|
  file.puts "I'm creating this from Ruby!"
  file.print "No Line break here!"
  file.puts "Pretty cool!"
end
