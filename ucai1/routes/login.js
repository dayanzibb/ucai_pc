const express=require("express");
var router=express.Router();
var pool=require("../pool");
router.post("/",(req,res)=>{
	var uname=req.body.uname;
	var upwd=req.body.upwd;
	//console.log(uname,upwd);
    var sql=`SELECT uname,upwd,uid from ucai_user WHERE uname=? AND upwd=?`;
    pool.query(sql,[uname,upwd],(err,result)=>{
			if (err) throw err;
			res.writeHeader(200,{
      "Access-Control-Allow-Origin":"*"
    });
       if(result.length>0){
        //console.log(result);
					res.write(JSON.stringify({ok:1,uid:result[0].uid}));
				}else{
					res.write(JSON.stringify({ok:0,msg:"用户名或密码错误!"}));
				}
					res.end();
});
});

router.post("/logins",(req,res)=>{
  var phone=req.body.phone;
  var upwd=req.body.upwd;
  //console.log(uname,upwd);
    var sql=`SELECT phone,upwd,uid from ucai_user WHERE phone=? AND upwd=?`;
    pool.query(sql,[phone,upwd],(err,result)=>{
      if (err) throw err;
      res.writeHeader(200,{
      "Access-Control-Allow-Origin":"*"
    });
       if(result.length>0){
        //console.log(result);
          res.write(JSON.stringify({ok:1,uid:result[0].uid}));
        }else{
          res.write(JSON.stringify({ok:0,msg:"用户名或密码错误!"}));
        }
          res.end();
});
});


router.post("/islogin",(req,res)=>{
  var uid=req.body.uid||-1;
  res.writeHeader(200,{
    "Access-Control-Allow-Origin":"*"
  });
  //if(req.session.uid==null){
    if(uid==-1){
      res.write(JSON.stringify({ok:0}));
      res.end();
    }else{
      var sql="select * from ucai_user where uid=?";
      pool.query(sql,[uid],(err,result)=>{
        res.write(JSON.stringify({ok:1,uname:result[0].uname}));
        res.end();
      })
    }
})
router.get("/signout",(req,res)=>{
  delete req.session.uid;
  res.send();
})


module.exports=router;