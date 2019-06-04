N = gets.to_i

a = gets.chomp.split(" ").map(&:to_i).sort

alice = 0

bob = 0

while !(a.empty?)
  alice += a.pop
  if !(a.empty?)
    bob += a.pop
  end
end

puts (alice - bob)
