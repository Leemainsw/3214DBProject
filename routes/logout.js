const express=require('express');
const router=express.Router();

router.get('/', (req, res)=>{
    delete req.session.displayName;
    res.redirect('/signin');
})

module.exports=router;