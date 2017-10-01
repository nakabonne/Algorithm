#n = gets.to_i
#s = gets.split.map(&:to_i)
#q = gets.to_i
#t = gets.split.map(&:to_i)

File.open('ALDS1_4_B-in6.txt') do |file|
    # IO#each_lineは1行ずつ文字列として読み込み、それを引数にブロックを実行する
    # 第1引数: 行の区切り文字列
    # 第2引数: 最大の読み込みバイト数
    # 読み込み用にオープンされていない場合にIOError
    file.each_line do |labmen|
      # labmenには読み込んだ行が含まれる
      puts labmen
    end
  end
=begin
sum = 0

for i in 0..(q-1)
  left = 0
  right = n-1
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
=end