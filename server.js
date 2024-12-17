const express = require('express');
const app=express();


app.get('/',(req,res)=>{
res.status(200).send({'Message':'Hehehe'})
})


app.listen(5000,()=>{
    console.log('Server running on 5000')
})