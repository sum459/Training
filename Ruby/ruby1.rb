
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

2.7.0 :059 > class Phones
2.7.0 :060 >   attr_accessor:color,:weight
2.7.0 :061 >   def initialize(x,y)
2.7.0 :062 >     @color=x
2.7.0 :063 >     @weight=y
2.7.0 :064 >   end
2.7.0 :065 > end

2.7.0 :043 > class Android < Phone
2.7.0 :044 >   def Ram(x)
2.7.0 :045 >     return x
2.7.0 :046 >   end

2.7.0 :066 > ob=Android.new("Black","167g")


2.7.0 :057 > ob.Ram(4)
 => 4 
2.7.0 :058 > ob.inspect
 => "#<Android:0x00005639a540c920 @color=\"Black\", @weight=\"167g\">" 
2.7.0 :067 > puts ob.color
Black
 => nil 
2.7.0 :068 > ob.color="Blue"
2.7.0 :069 > puts ob.color
Blue
 => nil 
2.7.0 :070 > ob.inspect
 => "#<Android:0x00005639a53b2380 @color=\"Blue\", @weight=\"167g\">" 

#Method Overriding
2.7.0 :092 > class Phones
2.7.0 :093 >   attr_accessor:color,:weight
2.7.0 :094 >   def initialize(x,y)
2.7.0 :099 >     puts "Parant class Ram: #{y}"
2.7.0 :100 >   end
2.7.0 :101 > end
 => :Ram 
2.7.0 :102 > class Android < Phones
2.7.0 :105 >   end
2.7.0 :106 > end
 => :Ram 
2.7.0 :109 > ob=Android.new("Red","256")

2.7.0 :111 > puts ob.Ram(5)
Child class Ram: 5

#Operator Overloading
2.7.0 :287 > class Animal
2.7.0 :288 >   attr_accessor:n,:t
2.7.0 :289 >   def initialize(x,y)
2.7.0 :290 >     @n=x
2.7.0 :291 >     @t=y
2.7.0 :292 >   end
2.7.0 :293 >   def +(o)
2.7.0 :294 >     return Animal.new("#{self.n} #{o.n})","#{self.t} #{o.t}")
2.7.0 :295 >   end
2.7.0 :296 > end
 => :+ 
2.7.0 :297 > class Cat < Animal
2.7.0 :298 > end
 => nil 
2.7.0 :299 > a=Cat.new("Sam",20)
2.7.0 :300 > puts a+b
#<Animal:0x00005639a53dd0a8>
 => nil 
2.7.0 :301 > puts (a+b).inspect
#<Animal:0x00005639a539caf8 @n="Sam Ham)", @t="20 10">
 => nil 

2.7.0 :303 > class M
2.7.0 :304 >   attr_accessor:l,:h
2.7.0 :305 >   def initialize(l,h)
2.7.0 :306 >     @l=l
2.7.0 :307 >     @h=h
2.7.0 :308 >   end
2.7.0 :309 > end
 => :initialize 
2.7.0 :310 > m=M.new(2,3)
2.7.0 :311 > puts m.l
2
 => nil 
2.7.0 :312 > puts m.h
3
 => nil 

2.7.0 :314 > m.freeze
 => #<M:0x00005639a53c6ad8 @l=2, @h=3> 
2.7.0 :315 > m.l=8
Traceback (most recent call last):
        4: from /home/beryl/.rvm/rubies/ruby-2.7.0/bin/irb:23:in `<main>'
        3: from /home/beryl/.rvm/rubies/ruby-2.7.0/bin/irb:23:in `load'
        2: from /home/beryl/.rvm/rubies/ruby-2.7.0/lib/ruby/gems/2.7.0/gems/irb-1.2.1/exe/irb:11:in `<top (required)>'
        1: from (irb):315
FrozenError (can't modify frozen M: #<M:0x00005639a53c6ad8 @l=2, @h=3>)
2.7.0 :316 > 

#Formatting Date and time
2.7.0 :351"> puts t.strftime("Year : %y
2.7.0 :352"> Month : %m
2.7.0 :353"> Day   : %d
2.7.0 :354"> Time  : %H:%M:%S %p
2.7.0 :355"> Time Zone :%z
2.7.0 :356">           
2.7.0 :357 > %A")

Year : 20
Month : 01
Day   : 24
Time  : 12:27:46 PM
Time Zone :+0530
          
Friday

#Strings

2.7.0 :358 > "Sumit".upcase
 => "SUMIT" 
2.7.0 :359 > "Sumit".downcase
 => "sumit" 
2.7.0 :360 > "Sumit".swapcase
 => "sUMIT" 
2.7.0 :361 > "Sumit".reverse.swapcase
 => "TIMUs" 
2.7.0 :362 > a="Sumit"
2.7.0 :363 > a.class
 => String 
2.7.0 :365 > a.length
 => 5 
2.7.0 :366 > a.size
 => 5 
2.7.0 :370 > str="Hello, This is Sumit Goyal"
2.7.0 :371 > str.split
 => ["Hello,", "This", "is", "Sumit", "Goyal"] 
2.7.0 :372 > str.capitalize
 => "Hello, this is sumit goyal" 
2.7.0 :373 > str.split("    ")
 => ["Hello, This is Sumit Goyal"] 
2.7.0 :374 > str.split("  vv  ")
 => ["Hello, This is Sumit Goyal"] 
2.7.0 :375 > str.empty?
 => false 
2.7.0 :376 > str.encoding
 => #<Encoding:UTF-8> 
2.7.0 :377 > str[1]
 => "e" 
2.7.0 :378 > age=12
2.7.0 :379 > "My #{age}"
 => "My 12" 
2.7.0 :380 > 'My #{age}'
 => "My \#{age}" 
2.7.0 :381 > puts 'My #{age}'
My #{age}
 => nil 
.0 :389 > "Hey!!!" + 3.to_s 
 => "Hey!!!3" 
2.7.0 :390 > "f  "*3
 => "f  f  f  " 
2.7.0 :391 > "hey " +self.to_s
 => "hey main" 
2.7.0 :393 > "abcdef"<=>"abc"
2.7.0 :394 > "abcdef"<=>"abcdefgh"
2.7.0 :395 > "abcdef"<=>"abcdef"
 => 1 
 => 1 
 => -1 
 => 1 
 => false 
 => false 
 => true 
2.7.0 :403 > "ab"=="bc"
 => false 
2.7.0 :404 > "a"==5
 => false 
2.7.0 :405 > "a"==65
 => false 
2.7.0 :406 > "a"==95
 => false 
2.7.0 :407 > a="Hello World"
2.7.0 :408 > a[2]
 => "l" 
2.7.0 :409 > a[2..6]
 => "llo W" 
2.7.0 :410 > a[1,6]
 => "ello W" 
2.7.0 :411 > a[1,6].size
 => 6 
2.7.0 :412 > a["ho"]
 => nil 
2.7.0 :413 > a["H"]
 => "H" 
2.7.0 :414 > a["H"].index
2.7.0 :417 > a.byteslice(5,8)
 => " World" 
2.7.0 :420 > a.casecmp"abcdefgh"
 => 1 
2.7.0 :421 > a.casecmp?"abcdefgh"
 => false 
2.7.0 :425 > "hello".center(14)
 => "    hello     " 
2.7.0 :429 > "Hello\n".chomp
 => "Hello" 
2.7.0 :430 > "Hello\r\n".chomp
 => "Hello" 
2.7.0 :431 > "Hello\n\n\r\n".chomp
 => "Hello\n\n" 
2.7.0 :432 > "Hello\n\n\r\n".chomp("llo")
 => "Hello\n\n\r\n" 
2.7.0 :433 > "Hello".chomp("llo")
 => "He" 
2.7.0 :434 > "Hello".chomp!("llo")
 => "He" 
2.7.0 :435 > "Hello\r\n".chop
 => "Hello" 
2.7.0 :436 > "Hello".chop
 => "Hell" 
2.7.0 :437 > "Hello".chop.chop.chop
 => "He" 
 => "Hello World" 
2.7.0 :439 > a.chr
 => "H" 
2.7.0 :440 > a.clear
 => "" 
2.7.0 :441 > a
 => "" 
2.7.0 :442 > a="Hello World"
2.7.0 :443 > a.count "l"
 => 3 
2.7.0 :444 > a.count "llo"
 => 5 
2.7.0 :445 > a << "!!!"
 => "Hello World!!!" 
2.7.0 :446 > b="Sam"
2.7.0 :447 > a.concat(b)
 => "Hello World!!!Sam" 
2.7.0 :448 > a.concat(b,a)
 => "Hello World!!!SamSamHello World!!!Sam" 
2.7.0 :449 > a.concat(b,"  ",a)
 => "Hello World!!!SamSamHello World!!!SamSam  Hello World!!!SamSamHello World!!!Sam" 
2.7.0 :450 > a
 => "Hello World!!!SamSamHello World!!!SamSam  Hello World!!!SamSamHello World!!!Sam" 
               ^
2.7.0 :454 > 'HELLO'.delete"L"
 => "HEO" 
2.7.0 :455 > 'HELLO'.delete"L","EL"
 => "HEO" 
2.7.0 :456 > 'HELLO'.delete"L","H"
 => "HELLO" 
2.7.0 :457 > 'HELLO'.delete"L","^H"
 => "HEO" 
2.7.0 :458 > 'HELLO'.delete"L","*H"
 => "HELLO" 
2.7.0 :459 > 'HELLO'.delete"aeiou","^H"
 => "HELLO" 
2.7.0 :460 > 'HELLO'.delete"AEIOU","^H"
 => "HLL" 
2.7.0 :461 > 'HELLO'.delete"bc-f","^H"
 => "HELLO" 
2.7.0 :462 > 'HELLO'.delete"BC-F","^H"
 => "HLLO" 
2.7.0 :463 > 'HELLO'.dump
 => "\"HELLO\"" 
2.7.0 :464 > a="Hey"
2.7.0 :465 > a.dump
 => "\"Hey\"" 
2.7.0 :466 > a
 => "Hey" 
2.7.0 :467 > a.each_byte {|i| puts i}
72
101
121
 => "Hey" 
2.7.0 :468 > a.each_char {|i| puts i}
H
e
y
 => "Hey" 
<pre>2.7.0 :469 &gt; a.each_codepoint {|i| puts i}
72
101
121

2.7.0 :474 a.each_line {|i| puts i}
Hey How Are Yoy
 Tell me
2.7.0 :476 > a.empty?
 => false 
2.7.0 :477 > a.eql?b
 => false 
.7.0 :480 > a.end_with?"me"
 => true 
2.7.0 :481 > a.gsub"me","ab"
 => "Hey How Are Yoy\n Tell ab" 
2.7.0 :482 > a.gsub"e","*"
 => "H*y How Ar* Yoy\n T*ll m*" 
2.7.0 :483 > a.include?"a"
 => false 
2.7.0 :484 > a.replace"a"
 => "a" 
2.7.0 :485 > a
 => "a" 
2.7.0 :486 > a="heyy"
2.7.0 :487 > a.index"2"
 => nil 
2.7.0 :492 > a.insert(0,"h")
 => "hheyy" 
2.7.0 :493 > "B".hex
 => 11 
2.7.0 :494 > "hello".match"h"
 => #<MatchData "h"> 
2.7.0 :495 > puts "hello".match"h"
h
 => nil 
2.7.0 :496 > puts "  hello".lstrip
hello
 => nil 
2.7.0 :497 > "hello".match?"h"
 => true 
2.7.0 :498 > "hello".succ
 => "hellp" 
2.7.0 :499 > "hello".oct
 => 0 
2.7.0 :501 > a.ord
 => 104 
2.7.0 :502 > a.partition("y")
 => ["hhe", "y", "y"] 
2.7.0 :503 > b="!!"
2.7.0 :504 > 
2.7.0 :505 > b.prepend("Go","Sam")
 => "GoSam!!" 
#Hashes

2.7.0 :507 > h={1=>"Sam",2=>"Baru"}
2.7.0 :508 > h
 => {1=>"Sam", 2=>"Baru"} 
2.7.0 :509 > puts h
{1=>"Sam", 2=>"Baru"}
 => nil 
2.7.0 :510 > h[1]
 => "Sam" 
2.7.0 :511 > h[3]="Dhruv"
2.7.0 :512 > puts h
{1=>"Sam", 2=>"Baru", 3=>"Dhruv"}
 => nil 
2.7.0 :513 > h[:A]=5
2.7.0 :514 > puts h
{1=>"Sam", 2=>"Baru", 3=>"Dhruv", :A=>5}
 => nil 
2.7.0 :515 > h[B]=8
2.7.0 :531 > ha=Hash.new("hello")
2.7.0 :535 > ha[:a]="Sam"
2.7.0 :536 > ha[:b]="Sharma"
2.7.0 :538 > ha[:c]
 => "hello" 
2.7.0 :539 > ha.keys
 => [:a, :b] 
2.7.0 :540 > puts ha
{:a=>"Sam", :b=>"Sharma"}
 => nil 
2.7.0 :541 > ha.inspect
 => "{:a=>\"Sam\", :b=>\"Sharma\"}" 
2.7.0 :542 > h=Hash.try_convert({1=>2})
2.7.0 :543 > h
 => {1=>2} 
2.7.0 :544 > h=Hash.try_convert({1=>2})
2.7.0 :545 > h=Hash.try_convert("1=>2")
2.7.0 :546 > h=Hash.try_convert("2=>1")
2.7.0 :547 > h
 => nil 
2.7.0 :548 > h.inspect
 => "nil" 
2.7.0 :542 > h=Hash.try_convert({1=>2})
2.7.0 :543 > h
 => {1=>2} 
2.7.0 :544 > h=Hash.try_convert({1=>2})
2.7.0 :545 > h=Hash.try_convert("1=>2")
2.7.0 :546 > h=Hash.try_convert("2=>1")
2.7.0 :547 > h
 => nil 
2.7.0 :548 > h.inspect
 => "nil" 
2.7.0 :549 > a=100
2.7.0 :550 > a="a"
2.7.0 :551 > b="b".freeze
2.7.0 :552 > ho={a=>100,b=>200}
2.7.0 :553 > ho
 => {"a"=>100, "b"=>200} 


2.7.0 :555 > ho.key(100).equal?a
 => false 
2.7.0 :556 > ho.key(200).equal?b
 => true 
2.7.0 :559 > ho.assoc("b")
 => ["b", 200] 
2.7.0 :560 > h
 => nil 
2.7.0 :561 > hh
 => {:A=>"Apple", :P=>"Pine-Apple"} 
2.7.0 :562 > ho.clear
 => {} 
2.7.0 :563 > hh[:A]
 => "Apple" 
2.7.0 :564 > hh.compare_by_identity?
 => false 
2.7.0 :565 > hh.compare_by_identity
 => {:A=>"Apple", :P=>"Pine-Apple"} 
2.7.0 :572 > hh.fetch(:A)
 => "Apple" 
2.7.0 :573 > a={1=>"A",2=>[2=>"f"]}
2.7.0 :574 > a.flatten
 => [1, "A", 2, [{2=>"f"}]] 
2.7.0 :575 > a.flatten(2)
 => [1, "A", 2, {2=>"f"}] 
2.7.0 :576 > a.flatten(3)
 => [1, "A", 2, {2=>"f"}] 
2.7.0 :577 > hh.has_key?:A
 => true 
2.7.0 :578 > hh.has_value?:A
 => false 
2.7.0 :588 > hh.delete(:A)
 => "Apple" 
2.7.0 :589 > hh
 => {:P=>"Pine-Apple"} 
2.7.0 :592 > a
 => {1=>"A", 2=>[{2=>"f"}]} 
2.7.0 :593 > hh
 => {:P=>"Pine-Apple"} 
2.7.0 :594 > a.merge(hh)
 => {1=>"A", 2=>[{2=>"f"}], :P=>"Pine-Apple"} 

2.7.0 :597 > a.rassoc("A")
 => [1, "A"] 
2.7.0 :598 > a=["a","b"]
2.7.0 :599 > b=["c",'d']
2.7.0 :600 > h={a=>100,b=>200}
2.7.0 :601 > h[a]
 => 100 
2.7.0 :602 > a[0]="z"
2.7.0 :603 > h[a]
 => nil 
2.7.0 :604 > h.rehash
 => {["z", "b"]=>100, ["c", "d"]=>200} 
2.7.0 :607 > h.replace({ "c" => 300, "d" => 400 }) 
 => {"c"=>300, "d"=>400} 
2.7.0 :608 > h.select {|k,v| k > "a"}
 => {"c"=>300, "d"=>400} 
2.7.0 :610 > h.select {|k,v| v > 300}
 => {"d"=>400} 

#Files i/o operations
2.7.0 :022 > f.syswrite("This is first line./n")
2.7.0 :023 > f.syswrite("This is second  line.")
 => 20 
 => nil 
 => "This is first line./nThis is second  line.This is third  line." 
2.7.0 :029 > f=File.open("Hey.txt","r+")
2.7.0 :030 > f.syswrite("\n This is my file.")
2.7.0 :031 > f.close
 => nil 
2.7.0 :032 > f=File.open("Hey.txt","r")
2.7.0 :033 > f.sysread(100)
 => "\n This is my file../nThis is second  line.This is third  line." 
2.7.0 :034 > f=File.open("Hey.txt","r+")
2.7.0 :035 > f.sysread(100)
 => "\n This is my file../nThis is second  line.This is third  line." 
2.7.0 :036 > f.close
 => nil 
2.7.0 :037 > f=File.open("Hey.txt","a+")
2.7.0 :038 > f.syswrite(" This is \n my file.")
 => 19 
2.7.0 :039 > f.close
 => nil 
2.7.0 :040 > f=File.open("Hey.txt","a+")
2.7.0 :041 > f.close
 => nil 
2.7.0 :042 > f=File.open("Hey.txt","r+")
2.7.0 :043 > f.sysread(100)
 => "\n This is my file../nThis is second  line.This is third  line. This is \n my file." 
2.7.0 :044 > f.close
2.7.0 :049 > f=File.open("Hey.txt","r+")
2.7.0 :050 > f.read()
 => "\n This is my file../nThis is second  line.This is third  line. This is \n my file." 
2.7.0 :051 > f=File.open("Hii.txt","r+")
2.7.0 :052 > f.read()
 => "Helloo Faridabad!!! \nkaise hai ap sbhi log!!! \n" 
2.7.0 :067 > f=File.open("Hii.txt","r")
2.7.0 :068 > print(f.readlines)
2.7.0 :070 > puts File.rename("Hii.txt","Bye.txt")
0
 => nil 
2.7.0 :071 > File.file?("Hii.txt")
 => false 
2.7.0 :072 > File.file?("Bye.txt")
 => true 
2.7.0 :073 > File.readable?("Bye.txt")
 => true 
2.7.0 :074 > File.writable?("Bye.txt")
 => true 

Did you mean?  executable?
2.7.0 :076 > File.executable?("Bye.txt")
 => false 
2.7.0 :077 > f.chmod(777)
 => 0 
2.7.0 :078 > File.executable?("Bye.txt")
 => false 
2.7.0 :079 > f.chmod(000)
 => 0 
2.7.0 :080 > File.executable?("Bye.txt")
 => false 
2.7.0 :081 > File.writable?("Bye.txt")
 => false 
2.7.0 :082 > File.readable?("Bye.txt")
 => false 
2.7.0 :084 > f=File.open("HiiB.txt","w")
2.7.0 :085 > f.puts "Hell"
 => nil 
2.7.0 :086 > f.puts "World"
 => nil 
2.7.0 :087 > f.close
 => nil 
2.7.0 :088 > f=File.open("HiiB.txt","r")
2.7.0 :089 > f.read()
 => "Hell\nWorld\n" 
#Regular Exp
2.7.0 :093 > puts a.match(/[aeiou]/)
2.7.0 :094 >   
e
 => nil 
2.7.0 :097 > puts a.match(/\d/)
2.7.0 :098 >   

 => nil 
2.7.0 :099 > a="45Hiii"
2.7.0 :100 >   
2.7.0 :101 > puts a.match(/\d/)
2.7.0 :102 >   
4
 => nil 
2.7.0 :103 > puts a.match(/\d+/)
2.7.0 :104 >   
45
 2.7.0 :138 > "Hi there, I am sumit goyal".match(/Hi/)
 => #<MatchData "Hi"> 
2.7.0 :139 > "Hi there, I am sumit goyal"=~/Hi/
 => 0 
2.7.0 :140 > "Hi there, I am sumit goyal"=~/Hiy/
 => nil 
2.7.0 :141 > a="Hi there, I am sumit goyal"
2.7.0 :142 > if a.match(/I/)
2.7.0 :143 >   puts "match"
2.7.0 :144 > else
2.7.0 :145 >   puts "no match"
2.7.0 :146 > end
match
2.7.0 :179 > def hello(str)
2.7.0 :180 >   str=~ /[aeiou]/
2.7.0 :181 > end
 => :hello 
2.7.0 :182 > puts (hello("Hii"))
1
 => nil 
2.7.0 :183 > puts (hello("Hii Raj"))
1
 => nil 
2.7.0 :184 > puts (hello("byy"))

 => nil 
#Extend in Modules
2.7.0 :052 > module Greeting
2.7.0 :053 >   def greet
2.7.0 :054 >     puts "Hello"
2.7.0 :055 >   end
2.7.0 :056 > end
 => :greet 
2.7.0 :057 > class GreetUser
2.7.0 :058 > extend Greeting
2.7.0 :059 >   def initialize(x)
2.7.0 :060 >     print " "+x
2.7.0 :061 >   end
2.7.0 :062 > end
 => :initialize 
2.7.0 :063 > GreetUser.greet
Hello
#Error Handling

2.7.0 :108 > begin
2.7.0 :109 >   puts "b4 exception raised"
2.7.0 :110 >   raise 'Exception'
2.7.0 :111 >   puts "Exception raised"
2.7.0 :112 > rescue
2.7.0 :113 >   puts  "saved"
2.7.0 :114 > ensure
2.7.0 :115 >   puts "done"
2.7.0 :116 > end
b4 exception raised
saved
done


2.7.0 :079 > begin
2.7.0 :080 >   n=10/0
2.7.0 :081 > rescue
2.7.0 :082 >   puts "dividion by zero error"
2.7.0 :083 > end
dividion by zero error

2.7.0 :100 > begin
2.7.0 :101 >   num["s"]
2.7.0 :102 >   n=10/0
2.7.0 :103 > rescue ZeroDivisionError
2.7.0 :104 >   puts "dividion by zero error"
2.7.0 :105 > rescue TypeError =>e 
2.7.0 :106 >   puts e
2.7.0 :107 > end
no implicit conversion of String into Integer
 => nil 


#Hashes
2.7.0 :117 > h={a:5,b:6,c:1}
2.7.0 :118 > h
 => {:a=>5, :b=>6, :c=>1} 
2.7.0 :119 > h[:e]=13
2.7.0 :120 > h
 => {:a=>5, :b=>6, :c=>1, :e=>13} 
2.7.0 :121 > h.keys
 => [:a, :b, :c, :e] 
2.7.0 :122 > h.each {|k,v| v<5}
 => {:a=>5, :b=>6, :c=>1, :e=>13} 

2.7.0 :126 > h.each {|k,v| puts k,v if  v<5}
c
1
 => {:a=>5, :b=>6, :c=>1, :e=>13} 
2.7.0 :127 > h.delete_if {|k,v|  v<5}
 => {:a=>5, :b=>6, :e=>13} 


2.7.0 :128 > a = ['white snow', 'winter wonderland', 'melting ice',
2.7.0 :129 >        'slippery sidewalk', 'salted roads', 'white trees']
2.7.0 :130 > a=a.map {|w| w.split}
2.7.0 :131 > puts a
white
snow
winter
wonderland
melting
ice
slippery
sidewalk
salted
roads
white
trees
 => nil 
2.7.0 :132 > a=a.flatten
2.7.0 :133 > p a
["white", "snow", "winter", "wonderland", "melting", "ice", "slippery", "sidewalk", "salted", "roads", "white", "trees"]
 => ["white", "snow", "winter", "wonderland", "melting", "ice", "slippery", "sidewalk", "salted", "roads", "white", "trees"] 


2.7.0 :231 > a.tr("H","How")
 => "Hello I am Sumit" 
2.7.0 :232 > a.tr("Hel","How")
 => "Howwo I am Sumit" 
2.7.0 :233 > a.tr("Heli","Howk")
 => "Howwo I am Sumkt" 
2.7.0 :234 > a.tr("HeliS","Howk")
 => "Howwo I am kumkt" 
2.7.0 :235 > a.tr("HeliS ","Howk")
 => "HowwokIkamkkumkt" 
2.7.0 :247 >  /a\+b/.match("a+b")
 => #<MatchData "a+b"> 
2.7.0 :248 >  /a\+b\'s/.match("a+b's")
 => #<MatchData "a+b's"> 
2.7.0 :249 >  /a\+b\"s/.match("a+b\"s")
 => #<MatchData "a+b\"s"> 


#Linguistics

<gem install linguistics>

2.7.0 :003 > require 'linguistics'
 => true 
2.7.0 :004 > Linguistics::use(:en)
 => [String, Numeric, Array] 
2.7.0 :005 > 2004.en.numwords
 => "two thousand and four" 
2.7.0 :006 > 123545677545567654445566776554445665555.en.numwords
 => "one hundred and twenty-three undecillion, five hundred and forty-five decillion, six hundred and seventy-seven nonillion, five hundred and forty-five octillion, five hundred and sixty-seven septillion, six hundred and fifty-four sextillion, four hundred and forty-five quintillion, five hundred and sixty-six quadrillion, seven hundred and seventy-six trillion, five hundred and fifty-four billion, four hundred and forty-five million, six hundred and sixty-five thousand, five hundred and fifty-five" 
2.7.0 :007 > 123545677545567654445566776554445665555.class
 => Integer 
2.7.0 :008 > "person".en.plural
 => "persons" 


#Prawn Module
gem install prawn
2.7.0 :001 > require 'prawn'
 => true 
2.7.0 :002 > Prawn::Document.generate("summer.pdf") do |pdf|
2.7.0 :003 >   pdf.font "Courier"
2.7.0 :004 >   pdf.move_down(50)
2.7.0 :005 >   pdf.draw_text("Hello, I am Summer", :at=> [0,pdf.y])
2.7.0 :006 > end
 => nil 
output:
Create a pdf document
/home/beryl/summer.pdf

#Practice some new concepts
beryl@beryl-To-be-filled-by-O-E-M:~$ ruby -e 'puts "Hello"'
Hello

#building hash from user input

h = { }
i = ""
name = ""
age = 0
 
print "Enter name, age; or just ENTER to quit: "
i = gets.chomp
 while i != "" do
 	(name, age) = i.split(",")
 	age = age.to_i
 	h[name] = age
 	
 	print "Enter name, age; or just ENTER to quit: "
 	i = gets.chomp
 end

 puts h.inspect


Enter name, age; or just ENTER to quit: sumit,19
Enter name, age; or just ENTER to quit: sunidhi,20
Enter name, age; or just ENTER to quit: Ishu , 14
Enter name, age; or just ENTER to quit: Ekta 21
Enter name, age; or just ENTER to quit: 
{"sumit"=>19, "sunidhi"=>20, "Ishu "=>14, "Ekta 21"=>0}


#Count no. of vowels in a given string


2.7.0 :036 > str="Hello I am sumit Goyal"
2.7.0 :037 > str.count('aeiou')
 => 7 
2.7.0 :038 > str.count('aeiouAEIOU')
 => 8 

#Print odd position letters of string
2.7.0 :034 > p("AlifLaila")
AlifLaila => nil 
2.7.0 :035 > def p(s)
2.7.0 :036 >   x,a=s,0
2.7.0 :037 >   while a < x.length
2.7.0 :038 >     print x[a]
2.7.0 :039 >     a+=2
2.7.0 :040 >   end
2.7.0 :041 > end
 => :p 
2.7.0 :042 > p("AlifLaila")
AiLia => nil 


#

2.7.0 :110 > def p(s)
2.7.0 :111 >   x,a=s,0
2.7.0 :112 >   b=Array.new()
2.7.0 :113 >   while a<x.length
2.7.0 :114 >     b<<s[a]
2.7.0 :115 >     a+=2
2.7.0 :116 >   end
2.7.0 :117 >   return b
2.7.0 :118 > end
 => :p 
2.7.0 :119 > e = p("AlifLaila")
2.7.0 :120 > def p(s)
2.7.0 :121 >   x,a=s,1
2.7.0 :122 >   b=Array.new()
2.7.0 :123 >   while a<x.length
2.7.0 :124 >     b<<s[a]
2.7.0 :125 >     a+=2
2.7.0 :126 >   end
2.7.0 :127 >   return b
2.7.0 :128 > end
 => :p 
2.7.0 :129 > f = p("AlifLaila")
2.7.0 :130 > e
 => ["A", "i", "L", "i", "a"] 
2.7.0 :131 > f
 => ["l", "f", "a", "l"] 
2.7.0 :132 > x=e.concat(f)
2.7.0 :133 > x
 => ["A", "i", "L", "i", "a", "l", "f", "a", "l"] 
2.7.0 :138 > y=x.join("")
2.7.0 :139 > y
 => "AiLialfal" 

#Sort string chars and print string
2.7.0 :070 > a="HelloThere"
2.7.0 :071 > a.chars.sort.join
 => "HTeeehllor" 


 #Combine two arrays and make a single hash

 => [:A, :B, :c, :D] 
2.7.0 :083 > a.inject({}) {|m,n| m[n]=b[a.index(n)];m}
 => {:A=>"apple", :B=>"mango", :c=>"banana", :D=>"pine-apple"}  

2.7.0 :092 > b
 => [10, 20, 30] 
2.7.0 :095 > b.each.inject(0) {|m,n| m+=n;m}
 => 60 


