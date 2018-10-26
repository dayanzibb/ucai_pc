const express=require("express");
var router=express.Router();
var pool=require("../pool");
router.post("/",(req,res)=>{
	var uname=req.body.uname;
	var upwd=req.body.upwd;
	var phone=req.body.phone;
	console.log(uname,upwd,phone);
	//console.log(uname,upwd);
    var sql=`INSERT INTO ucai_user VALUES(NULL,?,?,NULL,?)`;
    pool.query(sql,[uname,upwd,phone],(err,result)=>{
			if (err) throw err;
			res.writeHeader(200,{
      "Access-Control-Allow-Origin":"*"
			});
       res.write(JSON.stringify({ok:1}));
			 res.end();
    });
});

module.exports=router;