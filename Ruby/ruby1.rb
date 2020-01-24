
Practice Basic Concepts:

beryl@beryl-To-be-filled-by-O-E-M:~$ irb
2.7.0 :001 > puts "Hello"
 => nil 
3+4
2.7.0 :003 > puts "#{3+4}"
7
 => nil 
2.7.0 :004 > print 3+4
7 => nil 
2.7.0 :005 > a=5
2.7.0 :006 > b=2
2.7.0 :007 > c=a**b

2.7.0 :010 > print "value of c is = ",c
value of c is = 25 => nil 
2.7.0 :011 > puts "#{a%b}"
1
 => nil 
2.7.0 :012 > c.class
 => Integer 
2.7.0 :017"> print <<EOF
2.7.0 :018"> Hii This is Sumit
2.7.0 :019"> Hello this is Ishant
2.7.0 :020 > EOF
Hii This is Sumit
Hello this is Ishant
 => nil 
2.7.0 :021 > BEGIN {
2.7.0 :022 >   puts "This is very beginning" }
This is very beginning
 => nil 

END{"End of the class"}  
BEGIN{puts "Stating of class"} #This executes first
puts "Body of class"


beryl@beryl-To-be-filled-by-O-E-M:~$ ruby ruby.rb
Stating of class
Body of class

Practice Variables:

2.6.0 :001 > class Phone
2.6.0 :002?>   @@phone_type='Android'
2.6.0 :003?>   def ram
2.6.0 :004?>     puts "Its ram is 4gb"
2.6.0 :005?>     end
2.6.0 :006?>   end
 => :ram 
2.6.0 :007 > ob=Phone.new
 => #<Phone:0x000055c1f6ac83f8> 
2.6.0 :008 > ob.ram
Its ram is 4gb
 => nil 
2.6.0 :002 > class Office
2.6.0 :003?>   def initialize(id,did,name)
2.6.0 :004?>     @id=id
2.6.0 :005?>     @did=did
2.6.0 :006?>     @name=name
2.6.0 :007?>     end
2.6.0 :008?>   def show
2.6.0 :009?>     puts "id=#{@id}  did=#{@did} name=#{@name}"
2.6.0 :010?>     end
2.6.0 :011?>   end
 => :show 
2.6.0 :012 > ob1=Office.new("1","101","Sumit")
 => #<Office:0x000055a06d9086f8 @id="1", @did="101", @name="Sumit"> 
2.6.0 :014 > ob2=Office.new("2","101","Sahil")
 => #<Office:0x000055a06d973958 @id="2", @did="101", @name="Sahil"> 
2.6.0 :015 > ob1.show
id=1  did=101 name=Sumit
 => nil 
2.6.0 :016 > ob2.show
id=2  did=101 name=Sahil
 => nil 


Practice loops:

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

Practice Blocks:
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

Practice Defined etc:
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
 

Time and Date:

2.6.0 :018 > t=Time.new
 => 2020-01-21 17:10:53 +0530 
2.6.0 :019 > puts t
2020-01-21 17:10:53 +0530
 => nil 
2.6.0 :020 > t=Time.now
 => 2020-01-21 17:11:10 +0530 

2.6.0 :022 > puts "Current Time= "+t.inspect
Current Time= 2020-01-21 17:11:10 +0530
 => nil 
2.6.0 :026 > time=Time.new
 => 2020-01-21 17:15:50 +0530 
2.6.0 :027 > puts time.year
2020
 => nil 
2.6.0 :028 > puts time.day
21
 => nil 
2.6.0 :029 > puts time.wday
2
 => nil 

2.6.0 :031 > puts time.hour
17
 => nil 
2.6.0 :032 > puts time.sec
50
 => nil 

Setter nd Getter nd Iterators

class Animal
#setter
attr_writer:name,:age
#getter
attr_reader:name,:age

end
 f=Animal.new
 f.name="Cat"
 f.age="12"
 puts f.name
 puts f.age

 or

class Animal
#setter nd getter
attr_accessor:name,:age

end
 f=Animal.new
 f.name="Cat"
 f.age="12"
 puts f.name
 puts f.age

output:
Cat
12

2.6.0 :033 > puts time.yday
21

2.7.0 :001 > 5.times do puts "hey" end
hey
hey
hey
hey
 => 5 
2.7.0 :002 > 5.times {puts "hey"}
hey
hey
hey
hey
 => 5 
2.7.0 :003 > 5.upto(8) {puts "hey"}
hey
hey
hey
 => 5 
2.7.0 :004 > 5.downto(8) {|i|puts "hey #{i}"}
 => 5 
2.7.0 :005 > 5.downto(8) {|i| puts "hey #{i}"}
 => 5 
2.7.0 :006 > 12.downto(8) {|i| puts "hey #{i}"}
hey 12
hey 11
hey 10
hey 9
hey 8
 => 12 
2.7.0 :007 > 0.step(5) {|i| puts "hey #{i}"}
hey 0
hey 1
hey 2
hey 3
hey 4
hey 5
 => 0 
2.7.0 :008 > 0.step(25,5) {|i| puts "hey #{i}"}
hey 0
hey 5
hey 10
hey 15
hey 20
hey 25

Module,Require,Include Practice

module Mat
	A,B=0,1
def Mat.sf(x)
	puts Math.sin(x).round(2)
end

def Mat.cf(x)
	puts "#{(Math.cos(x)).round(2)}"
end
end
puts Mat::A 
Mat.sf(Mat::B)

0
0.84


require_relative "rr1.rb"

puts Mat::B 

0
0.84
1


require_relative "rr1.rb"

class Abc 

  include Mat	
    def m
     puts Mat::B 
    end
end

a=Abc.new
puts a.m

1

Array Methods

2.7.0 :045 > a=[1,2,3,4,"f","g"]
2.7.0 :046 > a.class
 => Array 
 => 6 
2.7.0 :048 > a.size
2.7.0 :049 > puts a.reverse
g
4
3
2
1
 => nil 
2.7.0 :050 > puts a.inspect
 => nil 
2.7.0 :051 > puts a
1
2
3
4
f
g
2.7.0 :052 > puts a.empty?
false
 => nil 
2.7.0 :053 > puts a.shift
1
 => nil 
2.7.0 :054 > puts a
4
f
 => nil 

2.7.0 :056 > puts a<<5
2
3
4
f
g
5
 => nil 
2.7.0 :057 > b=["a",1,2,3]
2.7.0 :058 > puts a.equal?b
false
 => nil 

2.7.0 :064 > puts a.index(3)
1


2.7.0 :065 > puts a.concat(b)
2
3
4
f
g
a
1
2
3
 => nil 
2.7.0 :066 > a.delete_at(3)
 => "f" 
2.7.0 :067 > puts a.concat(b)
2
3
4
g
5
a
2
3
a
1
2
 => nil 
2.7.0 :068 > puts a
2
3
4
g
5
1
2
3
a
1
2
 => nil 
2.7.0 :069 > puts b
a
1
2
3
 => nil 
2.7.0 :070 > puts a[0,6]
2
3
4
g
5
a
 => nil 
2.7.0 :071 > puts a[-5..-1]
3
a
1
2
3
 => nil 


2.7.0 :072 > puts a.index("a")
 => nil 
2.7.0 :073 > c=a&b
2.7.0 :074 > puts c
2
3
a
1
 => nil 
3
4
g
5
a
1
 => nil 
2.7.0 :076 > puts o=a-b
4
g
5
 => nil 
2.7.0 :077 > puts a.sort

2.7.0 :078 > c=[2,5,3,8]
2.7.0 :079 > puts c.sort
2
3
5
8



2-D Array
box=[]
2.7.0 :033 > 5.times do |row|
2.7.0 :034 >   box[row]=[]
2.7.0 :035 >   10.times do
2.7.0 :036 >     box[row]<<"*"
2.7.0 :037 >   end
2.7.0 :038 >   print "\n"
2.7.0 :039 > end





 => 5 
2.7.0 :040 > for row in box
2.7.0 :041 >     puts (row.inspect)
2.7.0 :042 > end
["*", "*", "*", "*", "*", "*", "*", "*", "*", "*"]
["*", "*", "*", "*", "*", "*", "*", "*", "*", "*"]
["*", "*", "*", "*", "*", "*", "*", "*", "*", "*"]
["*", "*", "*", "*", "*", "*", "*", "*", "*", "*"]
["*", "*", "*", "*", "*", "*", "*", "*", "*", "*"]


#Hashes
2.7.0 :080 > hash={1=>"Apple",2=>"Mango",}
2.7.0 :081 > puts hash
{1=>"Apple", 2=>"Mango"}
 => nil 
2.7.0 :082 > puts hash.inspect
 => nil 
2.7.0 :083 > puts hash.keys
1
2
 => nil 
Apple
Mango
 => nil 
2.7.0 :085 > puts hash.invert
{"Apple"=>1, "Mango"=>2}
 => nil 

2.7.0 :088 > hash.each {|x,y| puts "key : #{x}","value : #{y}" }
key : 1
value : Apple
key : 2
value : Mango

2.7.0 :138 > hash[1]="Apple"
2.7.0 :139 > hash[2]="Mango"
2.7.0 :140 > puts hash
{3=>"grapes", "w"=>"orange", 1=>"Apple", 2=>"Mango"}

2.7.0 :143 > puts hash.value?("2")
false
 => nil 
2.7.0 :144 > puts hash.key?("2")
false
 => nil 
2.7.0 :145 > puts hash.key?(2)
true
2.7.0 :150 > puts hash.values_at(1) 
Apple
2.7.0 :151 > puts hash.fetch(1) 
Apple

#Practice Rand

2.7.0 :154 > puts rand(10)
8
 => nil 
2.7.0 :155 > puts rand(0..5)
1
 => nil 
2.7.0 :156 > puts rand(0..5.8)
2.470413156251091

2.7.0 :152 > puts rand
0.47378437573791

2.7.0 :172 > puts (rand*10).to_i
2
 => nil 
2.7.0 :173 > puts (rand*10).round(2)
7.81
 => nil 

2.7.0 :174 > srand 0
 => 335369061521353846877657344054441804111 
2.7.0 :175 > puts rand 
0.5488135039273248
 => nil 
2.7.0 :176 > srand 0
 => 0 
2.7.0 :177 > puts rand 
0.5488135039273248
=>> nil 


#Inheritance

2.7.0 :013 > class Pa
2.7.0 :014 >   attr_accessor:name,:age
2.7.0 :015 > end
 => nil 
2.7.0 :016 > class Ca < Pa
2.7.0 :017 >   attr_accessor:cast
2.7.0 :018 > end
 => nil 
2.7.0 :019 > ob=Ca.new
2.7.0 :020 > ob.name="Sumit"
2.7.0 :021 > ob.age=20
2.7.0 :022 > ob.cast="Genera"
2.7.0 :023 > puts ob
#<Ca:0x00005639a518a968>
 => nil 
2.7.0 :024 > puts ob.inspect
#<Ca:0x00005639a518a968 @name="Sumit", @age=20, @cast="Genera">
 => nil 
2.7.0 :025 > puts ob.age
20
 => nil 



