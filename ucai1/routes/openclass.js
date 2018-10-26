const express=require("express");
var router=express.Router();
var pool=require("../pool");
router.get("/",(req,res)=>{
    var id=req.query.id;
    var sql=`SELECT * from ucai_openclass WHERE id=?`;
    pool.query(sql,[id],(err,result)=>{
			if (err) throw err;
      //console.log(id);
			res.writeHeader(200,{
      "Access-Control-Allow-Origin":"*"
    });
		if(result.length>0){
        //console.log(result);
			res.write(JSON.stringify(result));
       res.end();
		}
    });
});

module.exports=router;