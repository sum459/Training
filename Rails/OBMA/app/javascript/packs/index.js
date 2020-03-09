
    document.addEventListener('DOMContentLoaded',()=>{
      
      window.addEventListener('scroll',()=>{
      console.log('scrolled')
      let countValue = 0
      let userRow = document.querySelectorAll('.user-row') 
      countValue = userRow.length
      $.ajax({
          url:  "/users",
          type: "get",
          data: {
            count: countValue,
          },
          dataType: "script",
        });  
      })
    
    })