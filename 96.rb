def fizz_buzz(n)
  if n % 15 ==0
    "Fizz_buzz"
  elsif n % 3 == 0
    "Fizz"
  elsif n % 5 == 0
    "Buzz"
  else
    n.to_s
  end
  
rescue =>e
  puts "[LOG] エラーが発生しました: #{e.class} #{e.message}"
  # 捕捉した例外を再度発生させ、プログラム自体は異常終了させる
  raise
end

p fizz_buzz(nil)
