#Program of Odd-Even

print "Enter number : "
n=gets.to_i
if (n % 2 == 0)
	puts "#{n} is even"
else 
	puts "#{n} is odd"

endEnter number : 4
4 is even

Enter number : 5
5 is odd

# Max of 3 numbers
puts "Enter first no: "
a=gets.to_i
puts "Enter second no: "
b=gets.to_i
puts "Enter third no: "
c=gets.to_i
if a > b 
    if a > c
	 puts "#{a} is max"
    else
     puts "#{c} is max"	
    end
elsif b > c
	puts "#{b} is max"
else 
	puts "#{c} is max"
end


Enter first no: 
10
Enter second no: 
30
Enter third no: 
4
30 is max


Enter first no: 
1
Enter second no: 
2
Enter third no: 
45
45 is max

Enter first no: 
5
Enter second no: 
2
Enter third no: 
1
5 is max

#Program to check prime no.

2.7.0 :089 > puts "Enter a no:"
Enter a no:
 => nil 
2.7.0 :090 > n=gets.chomp.to_i
5
2.7.0 :091 > for i in (2..n)
2.7.0 :092 >     if(n%i==0)
2.7.0 :093 >       break
2.7.0 :094 >     end
2.7.0 :095 > end
 => nil 
2.7.0 :096 > if(n==i)
2.7.0 :097 >   puts"Prime"
2.7.0 :098 > else
2.7.0 :099 >   puts "not prime"
2.7.0 :100 > end
Prime



# Pattern Programs 
=begin
for i in 1..5
	for j in 1..5
		print "*"
	end
	print "\n"
end

*****
*****
*****
*****
*****



for i in 1..5
	for j in 1..5
		if(i<j)
		print "*"
	        end
	end
	print "\n"
end

****
***
**
*





for i in 1..5
	for j in 1..5
		if(i>=j)
		print "*"
	        end
	end
	print "\n"
end

*
**
***
****
*****


=end

#Hotel Menu Program

class Menu
	attr_reader:il
	def initialize(*items)
		@items=items
		@il=@items.size
	end

	def m_choise
		@items.each_with_index do|item,index|
			puts "#{index+1} . #{item}"
		end
       print "Place your order sir..!!!"
       user_choise=gets.to_i
      return user_choise
    end
end
ob=Menu.new("Pizza","Burger","Sandwich","Hot_dog","Quit")

while((choise=ob.m_choise) != ob.il)
	case choise
      when 1
      	puts "Your order for pizza Has been placed!!!"
      when 2
      	puts "Your order for Burger Has been placed!!!"
      when 3
      	puts "Your order for Sandwich Has been placed!!!"
      when 4
      	puts "Your order for Hot-dog Has been placed!!!"
      else
      	puts "Plz press valid no."
      end
 end  	
 puts "Thanxx for the visit"

1 . Pizza
2 . Burger
3 . Sandwich
4 . Hot_dog
5 . Quit
Place your order sir..!!!1
Your order for pizza Has been placed!!!
1 . Pizza
2 . Burger
3 . Sandwich
4 . Hot_dog
5 . Quit
Place your order sir..!!!
Plz press valid no.
1 . Pizza
2 . Burger
3 . Sandwich
4 . Hot_dog
5 . Quit
Place your order sir..!!!2
Your order for Burger Has been placed!!!
1 . Pizza
2 . Burger
3 . Sandwich
4 . Hot_dog
5 . Quit
Place your order sir..!!!5
Thanxx for the visit

#Palindrome Program using Modules classes

require_relative "rr.rb"

class Palindrome_n
	 def initialize(n)
         if M_c_r.reverse_digits(n)==n
         	return puts "#{n} is a palindrome no."
         else
         	return puts "#{n} is not a palindrome no."
         end
     end
end

puts "Enter a no:"
$n=gets.to_i
ob=Palindrome_n.new($n)

OUTPUT:
34566543
34566543 is a palindrome no.

Enter a no:
345 is not a palindrome no.



#Armstrong no. program using self module
  
require_relative "rr.rb"

 class Armstrong_n
      def initialize(n)
         p=M_c_r.count_digits(n) 
         sum,y,r=0,0,n
          while n!= 0
           y=n%10
           sum=sum+(y**p)
           n/=10
        end
        if sum==r
            return puts "Armstrong No."
          else
           return puts"Not armstrong no."
        end
      end
 end

puts "Enter a no:"
$n=gets.to_i
ob=Armstrong_n.new($n)

OUTPUT:

beryl@beryl-To-be-filled-by-O-E-M:~/mm$ ruby rr1.rb
Enter a no:
45
Not armstrong no.

beryl@beryl-To-be-filled-by-O-E-M:~/mm$ ruby rr1.rb
Enter a no:
1
Armstrong No.
y-O-E-M:~/mm$ ruby rr1.rb
Enter a no:
0
Armstrong No.

beryl@beryl-To-be-filled-by-O-E-M:~/mm$ ruby rr1.rb
Enter a no:
10
Not armstrong no.
beryl@beryl-To-be-filled-by-O-E-M:~/mm$ ruby rr1.rb
Enter a no:
153
Armstrong No.
beryl@beryl-To-be-filled-by-O-E-M:~/mm$ ruby rr1.rb
Enter a no:
1634
Armstrong No.

#Pattern of user's choice

class Patterns_p

  def square_p(r,c)
    (1..r).each do |i|
      (1..c).each do |j|
        print "*"
      end
       puts
    end
  end

  def pyramid_t(r)
    (1..r).each do |i|
      (1...2*r).each do |j|
        if(j>=(r+1)-i and j<=(r-1)+i)
          print "*"
        elsif(j==r+i)
          break
        else
          print" "
        end
      end
      puts
    end
  end
    def diamond_d(r)
      k=0
    (1..r).each do |i|
      i<=(r/2)?k+=1:k-=1
      (1...2*r).each do |j|
        if(j>=((r/2)+1)-k and j<=((r/2)-1)+k)
          print "*"
        else
          print" "
        end
      end
      puts
    end
  end

  def choise_c
    puts "1. Box "
    puts "2. Pyramid "
    puts "3. Diamond "
    puts "4. Quit"
    puts "Enter your choise"
    c=gets.to_i
    return c
  end

end
ob=Patterns_p.new

 while (c=ob.choise_c)
      
  case c
    when 1 
      puts "Enter No. of rows:"
      r=gets.to_i
      puts "Enter No. of cols:"
      c=gets.to_i 
     ob.square_p(r,c)
    when 2 then puts "Enter No. of rows:"
      r=gets.to_i 
      ob.pyramid_t(r)
    when 3 then puts "Enter No. of rows:"
      r=gets.to_i
      ob.diamond_d(r)
    when 4 then break
    else
      puts "Please press valid button"
  end
end

Output:

1. Box 
2. Pyramid 
3. Diamond 
4. Quit
Enter your choise
3
Enter No. of rows:
12
     *                 
    ***                
   *****               
  *******              
 *********             
***********            
 *********             
  *******              
   *****               
    ***                
     *                 
                       
1. Box 
2. Pyramid 
3. Diamond 
4. Quit
Enter your choise
2
Enter No. of rows:
8
       *
      ***
     *****
    *******
   *********
  ***********
 *************
***************
1. Box 
2. Pyramid 
3. Diamond 
4. Quit
Enter your choise
1
Enter No. of rows:
4
Enter No. of cols:
10
**********
**********
**********
**********
1. Box 
2. Pyramid 
3. Diamond 
4. Quit
Enter your choise
5
Please press valid button
1. Box 
2. Pyramid 
3. Diamond 
4. Quit
Enter your choise
4

#Print current date nd time
2.7.0 :001 > require 'date'
 => true 
2.7.0 :002 > t=DateTime.now
2.7.0 :003 > cd=t.strftime "%d-%m-%Y  %H:%M "
2.7.0 :004 > puts cd
27-01-2020  14:04 
# sum of array elements
2.7.0 :008 > a=[10,20,30,40,50]
2.7.0 :009 > puts a.inject(0) {|sum,x| sum+x}
150

