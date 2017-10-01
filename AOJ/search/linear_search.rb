# Wrong Answer
n = gets.to_i
s = gets.split.map(&:to_i)
q = gets.to_i
t = gets.split.map(&:to_i)
count = 0
for i in 0..(s.size-1)
  for j in 0..(t.size-1)
    if s[i] == t[j]
      count += 1
    end
  end
end
puts count