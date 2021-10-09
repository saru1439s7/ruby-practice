class Product
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def to_s
    "name: #{name}, price: #{price}"

    # "#{super}, running_time: #{running_time}"
  end
end

class DVD < Product
  attr_reader :running_time

  def initialize(name, price, running_time)
    super(name, price)
    @running_time = running_time
  end
   def to_s
    "#{super}, running_time: #{running_time}"
  end
end


product = Product.new('A great movie', 100)
p product.to_s
# p product.name
# p product.price
dvd = DVD.new('An awesome film', 3000, 120)
p dvd.to_s