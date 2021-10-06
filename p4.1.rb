# numbers=[1,2,3,4]
# sum=0
# numbers.each do|n|
#  sum += n
# end

# puts sum

# a=[1,2,3,1,2,3,4]
# a.delete(2)

#  puts a

#  a=[1,2,3,1,2,3]
#  a.delete_if do |n|
#    n.odd?
#  end
#  puts a

#  p('ここ4.3.4')

#  numbers=[1,2,3,4]
#  sum=0
#  numbers.each do |n|
#    sum +=n
#  end

#  puts sum

#  p"4.4.1"
#  members=[1,2,3,4,5,6]
#  new_members=[]
#  members.each{|n|new_members<<n*10}
# puts new_members
members = [1,2,3,4]
new_members = members.map{|n| n*10 }
puts new_members

numbers = [1,2,3,4]
even_numbers =numbers.select{|n| n.even?}
puts even_numbers

numbers = [1,2,3,4,5,6]
sum=numbers.inject(0){|result,n| result+n}
puts sum

def charge(age)
 case age
 when 0..5
   0
 when 6..12
   300
 when 13..18
   600
  else
   1000
 end  
end
print charge(30)

#4.5.5
numbers = (1..4).to_a
 sum = 0
 numbers.each {|n| sum+= n}
 print sum
 
numbers=[]
(1..20).step(2){ |n| numbers<< n }
print numbers
 p "次4.6"
 