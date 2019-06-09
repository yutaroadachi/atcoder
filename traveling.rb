N = gets.chomp.to_i

t, x, y = [0], [0], [0]

for n in 1..N do
  t[n], x[n], y[n] = gets.chomp.split(" ").map(&:to_i)
end

can = true

for n in 1..N do
  dt = t[n] - t[n-1]
  dist = (x[n] - x[n-1]).abs + (y[n] - y[n-1]).abs
  can = false if dt < dist
  can = false if dist % 2 != dt % 2
end

if can
  puts "Yes"
else
  puts "No"
end

