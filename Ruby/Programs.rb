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


