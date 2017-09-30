n = gets.to_i
arr = gets.split.map(&:to_i)
s = ""
arr.each{|a| s += a.to_s; s += " "}
puts s.chop

for i in 1..(n-1)
  v = arr[i]
  j = i-1
  while j >= 0 && arr[j] > v
    arr[j+1] = arr[j]
    j -= 1
  end
  arr[j+1] = v
  s = ""
  arr.each{|a| s += a.to_s; s += " "}
  puts s.chop
end