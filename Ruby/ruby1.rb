2.6.0 :001 > for i in 0..10
2.6.0 :002?>   puts "hello"
2.6.0 :003?>   end
hello
hello
hello
hello
hello
hello
hello
hello
hello
hello
hello

2.6.0 :007 > (0..5).each do |i|
2.6.0 :008 >     puts "#{i}"
2.6.0 :009?>   end
0
1
2
3
4
5







#If-Else,Elsif,unless


a,b=10,5
if a < b
  puts "#{a} is less than #{b}"
 elsif a==b
 	puts"#{a} is equal to #{b}"
else
 	puts "#{b} is less than #{a}"
 end
 	
Ans: beryl@beryl-To-be-filled-by-O-E-M:~/Desktop/Training/Ruby$ ruby ruby1.rb
5 is less than 10


x=11
unless x>2
	puts "X is less than 3"
else 
	puts "X is more than 2"
end

beryl@beryl-To-be-filled-by-O-E-M:~/Desktop/Training/Ruby$ ruby ruby1.rb
X is more than 2



#case

age = 25
case age
 when 0..2
 	puts "Baby"
 when 3..7
 	puts "little child"
 when 8..12
 	puts "Child"
 when 13..17
 	puts "Youth"
 else
 	puts "Adult"
 end


print 1.respond_to?("even")
puts "#{1.respond_to?("even?")}"

beryl@beryl-To-be-filled-by-O-E-M:~/Desktop/Training/Ruby$ ruby ruby1.rb
falsetrue

c=5
print defined?(c)

beryl@beryl-To-be-filled-by-O-E-M:~/Desktop/Training/Ruby$ ruby ruby1.rb
local-variable


n=1
while n<=10
	puts "#{n}"
	n+=1
end

beryl@beryl-To-be-filled-by-O-E-M:~/Desktop/Training/Ruby$ ruby ruby1.rb
1
2
3
4
5
6
7
8
9
10


n=1
begin
	puts "#{n}"
	n+=1
end until n<10 and n!=1

beryl@beryl-To-be-filled-by-O-E-M:~/Desktop/Training/Ruby$ ruby ruby1.rb
1


