ajax("http://localhost:3000/header.html")
.then(res=>{
    document.getElementById("header").innerHTML=res;
    
    new Vue({
    	el:"#c-nav",
    	data:{islogin:false}
    })

    
});
