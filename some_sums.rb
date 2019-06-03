N, A, B = gets.chomp.split(" ").map(&:to_i)

count = 0

for n in 1..N do
  sum = 0

  n.to_s.chars.map do |string_n|
    sum += string_n.to_i
  end

  if sum >= A && sum <= B
    count += n
  end
end

puts count
