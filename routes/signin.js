const express=require('express');
const router=express.Router();

router.post('/', (req, res)=>{

});

router.get('/', (req, res)=>{   
    res.render('signin');
})

module.exports=router;