n = gets.to_i
s = gets.split.map(&:to_i)
q = gets.to_i
t = gets.split.map(&:to_i)

sum = 0

for i in 0..(q-1)
  left = 0
  right = n
  key = t[i]
  while left < right
    mid = (right+left)/2
    if key == s[mid]
      sum += 1
      break
    elsif key < s[mid]
      right = mid
    else
      left = mid+1
    end
  end
end
puts sum