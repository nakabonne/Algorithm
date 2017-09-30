n = gets.to_i
arr = gets.split.map(&:to_i)
last = n-1
swap_count = 0

for i in 0..last
  minJ = i
  for j in i..last
    if arr[minJ] > arr[j]
      minJ = j
    end
  end
  arr[i], arr[minJ] = arr[minJ], arr[i]
  swap_count += 1 if minJ != i
end

s = ""
arr.each{|a| s += a.to_s; s += " "}
puts s.chop
puts swap_count