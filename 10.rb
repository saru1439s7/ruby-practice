def greeting(&block)
  puts 'おはよ'
  text= block.call('hello')
  puts text
  puts 'こんばんは'
end

greeting do |text|
  text*2
end
############
add_proc = Proc.new{|a,b| a+b}
p add_proc.class
p add_proc.lambda?

add_lambda = ->(a, b) { a + b }
p add_lambda.class   
p add_lambda.lambda? 
################
def judje (age)
 adult = proc {|n| n>20}
 child = proc{ |n| n<20}
 case age
 when adult
   "大人"
 when child
   "こども"
 else
  "ハタチ"  
 end
end

p judje(25)
p judje(20)
###############
def generate_proc(array)
  counter = 0
  # Procオブジェクトをメソッドの戻り値とする
  Proc.new do
    # ローカル変数のcounterを加算する
    counter += 10
    # メソッド引数のarrayにcounterの値を追加する
    array << counter
  end
end

# ----------------------------------------

values = []
sample_proc = generate_proc(values)
p values 

# Procオブジェクトを実行するとgenerate_procメソッドの引数だったvaluesの中身が書き換えられる
sample_proc.call
p values #=> [10]

# generate_procメソッド内のローカル変数counterも加算され続ける
sample_proc.call
p values #=> [10, 20]
sample_proc.call
p values #=> [10, 20]
sample_proc.call
p values #=> [10, 20]