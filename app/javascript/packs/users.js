

document.addEventListener("DOMContentLoaded",()=>{
        const ps = document.querySelector('#ps');
        const pass = document.querySelector('#pass');
        const user = document.querySelector('#user');
        const email = document.querySelector('#email');
        const mobile = document.querySelector('#mobile');
    	const un = document.querySelector('#un');
    	const mo = document.querySelector('#mo');
		const em = document.querySelector('#em');
    	const cp = document.querySelector('#cp');
    	const p1 = document.querySelector('#p1');
		const p2 = document.querySelector('#p2');
    	const p3 = document.querySelector('#p3');
        const p4 = document.querySelector('#p4');




      user.addEventListener('focus',()=>{

          un.style.display = "block";

        });

        user.addEventListener('keyup',()=>{
          un.style.display = "none";
        });

        user.addEventListener('focusout',()=>{
          un.style.display = "none";
        });


        pass.addEventListener('focus',()=>{

          ps.style.display = "block";

        });

        pass.addEventListener('keyup',()=>{
    			x = pass.value
    			x.match(/[A-Z]+/)? p1.style.display="none":p1.style.display="block"
    			x.match(/[a-z]+/)? p2.style.display="none":p2.style.display="block"
    			x.match(/[0-9]+/)? p3.style.display="none":p3.style.display="block"
    			x.match(/.{8}/)? p4.style.display="none":p4.style.display="block"

    		});

        pass.addEventListener('focusout',()=>{

          ps.style.display = "none";
        });



        cpass.addEventListener('focus',()=>{
            cp.style.display = "block";


        });

      cpass.addEventListener('keyup',()=>{
          x = pass.value
          pass.value == cpass.value? cp.style.display = 'none':cp.style.display = 'block';

        });

        cpass.addEventListener('focusout',()=>{

          cp.style.display = "none";
        });




        email.addEventListener('focus',()=>{

          em.style.display = "block";

        });

        email.addEventListener('keyup',()=>{

    			x = email.value

    			x.match(/\A[\w+\.+-]+@\w+\.\w+\z/)? em.style.display="none":em.style.display="block";

    		});

        email.addEventListener('focusout',()=>{

          em.style.display = "none";
        });

        mobile.addEventListener('focus',()=>{

          mo.style.display = "block";

        });

        mobile.addEventListener('keyup',()=>{

          x = mobile.value

          x.match(/\d{10}/)? mo.style.display="none":mo.style.display="block";

        });

        mobile.addEventListener('focusout',()=>{

          mo.style.display = "none";
        });


        const form = document.querySelector('#new_user');

        form.addEventListener('submit',()=>{
        			let inputs = document.getElementsByTagName('input')
        		  	count = 0
        			for (var i=0;i<inputs.length;++i)
        				{
        					if(inputs[i].value === '')
        					{
        						count += 1;
        					}
        				}
        			if(count > 0)
        				{
        					alert("All fields are mandatory")
        				}
        			// else
        			// 	{
        			// 		alert("Form submitted successfully")
        			// 	}
        		});
    });
