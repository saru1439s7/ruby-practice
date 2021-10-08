text = <<TEXT
 i love RUBY
 Python is great
 Java and Java script is different 
TEXT

p text.scan(/[a-z][A-Za-z]+/)

text = <<TEXT
郵便番号は1234567
住所は09uです
TEXT

puts text.gsub(/(\d{3})(\d{4})/, '\1-\2')

text = "誕生日は1994年11月1日です"
m=/(\d+)年(\d+)月(\d+)日/.match(text)
p m[1]

text = "誕生日は1994年11月1日です"
if /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/=~ text
    p "#{year}/#{month}/#{day}"
end
