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

 => 0..5 
2.6.0 :010 > def hello
2.6.0 :011?>   yield 5
2.6.0 :012?>   puts "hii"
2.6.0 :013?>   yield 100
2.6.0 :014?>   end
 => :hello 
2.6.0 :015 > hello {|i| puts"hello G #{i}"}
hello G 5
hii
hello G 100







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


1


if ((1..10) === 4)
   puts "4 lies in (1..10)"
end

if (('a'..'j') === 'b')
   puts "b lies in ('a'..'j')"
end

if (('a'..'j') === 'z')
   puts "z lies in ('a'..'j')"
end

4 lies in (1..10)
b lies in ('a'..'j')


score = 90

result = case score
   when 0..40 then "Fail"
   when 41..60 then "Pass"
   when 61..70 then "Pass with Merit"
   when 71..100 then "Pass with Distinction"
   else "Invalid Score"
end

puts result

Pass with Distinction

2.6.0 :016 > d=  ["a",5]
 => ["a", 5] 
2.6.0 :017 > print d
["a", 5] => nil 
2.6.0 :018 > puts "#{d}"
["a", 5]
 => nil 
2.6.0 :019 > puts d
a
5
2.6.0 :020 > H = Hash["a" => 100, "b" => 200]
 => {"a"=>50, "b"=>1200} 
 
2.6.0 :024 > puts "#{H['a']}"
50
 
