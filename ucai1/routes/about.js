const express=require("express");
var router=express.Router();
var pool=require("../pool");
router.get("/",(req,res)=>{
    var pic_id=req.query.pic_id;
    var sql=`SELECT * from ucai_about WHERE pic_id=?`;
    pool.query(sql,[pic_id],(err,result)=>{
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