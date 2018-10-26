const express=require("express");
var router=express.Router();
var pool=require("../pool");
router.get("/",(req,res)=>{
    var sql=`SELECT url from ucai_index_carousel `;
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