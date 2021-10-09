module Loggable
 module_function
 def log(text)
  puts "[LOG] #{text}"
 end
# module_functionメゾットで
# module_function :log
end

Loggable.log('Hello')

class Product
 include Loggable
 def title
  log 'titale is called'
  'A great movie'
 end
end

product = Product.new
p product.title
