#モジュールを学習する
module Loggable
  # private
 def log(text)
  puts "[LOG]#{text}"
 end
end

class Product

 extend Loggable
 def self.create_products(names)
  log 'create_products is called.'
 end
# include Loggable 
# def title
#   log 'title is called.'
#     'A great movie'
# end
end

class User
 include Loggable
 def name
   log 'name is called.'
       'Alice'
 end
end

# product = Product.new
# p product.title

user = User.new
p user.name
# p product.log 'public?'

Product.create_products([])
p Product.log("hello")