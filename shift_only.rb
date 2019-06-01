n = gets.to_i

a = gets.chomp.split(" ").map(&:to_i)

count = 0

while a.all? { |target| target % 2 == 0 }
  a.map! { |target| target / 2 } 
  count += 1
end

puts count
