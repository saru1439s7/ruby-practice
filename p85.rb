module Taggable
 def price_tag
  "#{price}円"
 end
end

class Product
  include Taggable
  def price
    1000
  end
end

product= Product.new
p product.price_tag
#########################
class Tempo
  include Comparable
  attr_reader :bpm
  
    def initialize(bpm)
      @bpm = bpm
    end
    
    def <=>(other)
     if other.is_a?(Tempo)
       bpm<=>other.bpm
     else
       nil
     end
    end
    
    def inspect
      "#{bpm}bpm"
    end
end

p t_120 = Tempo.new(120) #=> 120bpm
p t_180 = Tempo.new(180) #=> 180bpm

p t_120 > t_180   #=> false
p t_120 <= t_180  #=> true
p t_120 == t_180  #=> false

#########################irb
