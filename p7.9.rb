class Product
   # クラスインスタンス変数
  @name = 'Product'
 
  def self.name
     # クラスインスタンス変数
    @name
  end

  def initialize(name)
     # インスタンス変数
    @name = name
  end

  # attr_reader :nameでもいいが、@nameの中身を意識するためにあえてメソッドを定義する
  def name
     # インスタンス変数
    @name
  end
end

Product.name #=> "Product"

product = Product.new('A great movie')
product.name #=> "A great movie"
Product.name #=> "Product"
