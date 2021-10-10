puts 'Start.'
module Greeter
  def hello
    'hello'
  end
end
begin
  greeter = Greeter.new
rescue
  puts '例外が発生したが、このまま続行する'
end
# 上の行で例外が発生するため、ここから下は実行されない
puts 'End.'
##########################
retry_count = 0
begin
  puts '処理を開始します。'
  # わざと例外を発生させる
  1 / 0
rescue
  retry_count += 1
  if retry_count <= 3
    puts "retryします。（#{retry_count}回目）"
    retry
  else
    puts 'retryに失敗しました。'
  end
end