N, Y = gets.chomp.split(" ").map(&:to_i)

number_of_10000 = -1

number_of_5000 = -1

number_of_1000 = -1

catch(:for_break) do
  for a in 0..N do
    for b in 0..(N - a) do
      c = N - a - b
      if (10000 * a) + (5000 * b) + (1000 * c) == Y
        number_of_10000 = a
        number_of_5000 = b
        number_of_1000 =c
        throw(:for_break)
      end
    end
  end
end

puts "#{number_of_10000} #{number_of_5000} #{number_of_1000}"
