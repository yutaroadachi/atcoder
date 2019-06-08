S = gets.chomp

if S.gsub("eraser", "").gsub("erase", "").gsub("dreamer", "").gsub("dream", "").empty?
  puts "YES"
else
  puts "NO"
end
