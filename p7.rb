class User
   def initialize(name)
     @name = name
   end
   
   def self.create_users(names)
      names.map do |name|
        User.new(name)
      end
   end
   
   def hello
    "Hello, I am #{@name}"
   end
end

 names = ["Alice","Bob","Mrasa"]
 users = User.create_users(names)
   users.each do |user|
     puts user.hello
   end
 
class Foo
 puts "クラス構文の直下のself: #{self}"
 
 def self.bar
  puts "クラスメソッド内のself: #{self}"
 end
 def baz
    puts "インスタンスメソッド内のself: #{self}"
 end
 puts Foo.bar
# puts Foo.baz
end


class Product
 attr_reader :name, :price
    def initialize(name,price)
        @name = name
        @price  = price
    end
    
    def self.format_price(price)
        "#{price}円"
    end
    
    def to_s
    formatted_price  = Product.format_price(price)
       "name: #{name}, price: #{formatted_price}"
    end
  product = Product.new('A great movie', 1000)
  p product.to_s 
end