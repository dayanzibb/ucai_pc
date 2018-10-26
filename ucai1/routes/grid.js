const express=require("express");
var router=express.Router();
var pool=require("../pool");
router.get("/grid",(req,res)=>{
    var sql=`SELECT * from ucai_course `;
    pool.query(sql,[],(err,result)=>{
			if (err) throw err;
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


router.get("/fight",(req,res)=>{
    var sql=`SELECT * from ucai_fight `;
    pool.query(sql,[],(err,result)=>{
      if (err) throw err;
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