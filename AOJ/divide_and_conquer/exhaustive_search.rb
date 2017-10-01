@n = gets.to_i
@a = gets.split.map(&:to_i)
@q = gets.to_i
@m = gets.split.map(&:to_i)

def solve(i, m)
  return true if m == 0
  return false if i >= @n
  res = solve(i+1, m) || solve(i+1, m-@a[i])
  return res
end

@m.each do |mm|
  puts solve(0, mm) ? 'yes' : 'no'
end