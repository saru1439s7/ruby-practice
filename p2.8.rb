puts %q!He said,"OK"!
something ="hello"
puts %Q!He said, "#{something}OK"!

puts "Line1,
Line2"
a= <<TEXT
これはドキュメント
です
TEXT
puts a

name= 'masayuki'
a=<<TEXT
ようこそ#{name}さん
TEXT
puts a

a='RUBy'
a.prepend(<<TEXT)
JAVA
PHP
TEXT
puts a

str = sprintf("%0.3f", 123.4) 
p sprintf('%0.3f',12)
p sprintf("%#b", 10)
puts str

1&&2&&3

def greeting(country)
 country or return 'countryを入力してください'
 if country =='japan'
   'こんにちは'
  else
    'Hello'
  end
  greeting(nill)
  greeting('japan')
end