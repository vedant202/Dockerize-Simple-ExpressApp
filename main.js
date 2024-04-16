const express = require("express")

const app = express()

const PORT = process.env.PORT || 3000

app.get("/",(req,res)=>{
    res.json({"Message":" Hii from vedant dhenge"})
})

app.listen(PORT,()=>{
    console.log("App is listening on Port "+PORT)
});