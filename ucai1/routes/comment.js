const express=require("express");
var router=express.Router();
var pool=require("../pool");
router.get("/",(req,res)=>{
    var cid=req.query.cid;
    var sql=`SELECT * from ucai_comment WHERE cid=?`;
    pool.query(sql,[cid],(err,result)=>{
			if (err) throw err;
			res.writeHeader(200,{
      "Access-Control-Allow-Origin":"*"
    });
		if(result.length>0){
        //console.log(result);
			res.write(JSON.stringify(result));
		}else{
      res.write("{code:-1}");
    }
      res.end();
    });
});

module.exports=router;