
module M_c_r

 def M_c_r.count_digits(t)
	  r,c=t,0
    while r!= 0
    	r%10
        c+=1
        r/=10
    end
    return c
    #puts "#{c} Digits no."
 end

 def M_c_r.reverse_digits(p)
	  x,y,temp=p,0,0
    while x!= 0
    	y=x%10
        temp=(temp*10)+y
        x/=10
    end
    return temp
    #puts "Reverse of no is #{temp}"
 end
end

