const express = require('express');
const User = require("../models/user");
const bcryptjs = require('bcryptjs');
const jwt = require('jsonwebtoken');
const authRouter = express.Router();

//1.get the data
//2.post the data in database
//3. return the data to the user

//SignUp code 
authRouter.post("/api/signup", async (req,res) =>{
    try{
        const {name, email, password} = req.body;
        var existingUser = await User.findOne({email});

    if(existingUser){
        return res
        .status(400)
        .json({msg:"User with same email already existing"});
    }

    const hashPassword = await bcryptjs.hash(password,8);

    let user = new User({
        email,
        password: hashPassword,
        name,
    });

    user = await user.save();
    res.json(user);
    } catch(e) {
        res.status(500).json({error: e.message});
    }
    
});

authRouter.post("/api/signin", async (req,res) =>{
    try{
        const { email, password } = req.body;

        const user = await User.findOne({ email });
        if(!user){
            return res
            .status(400)
            .json({msg: "User with this email does not exists!"});
        }

        const isMatch = await bcryptjs.compare(password, user.password);
        if(!isMatch)
        {
            return res.status(400)
            .json({msg: "Incorrect Password."});
        }

        const token = jwt.sign({ id: user._id}, "passwordKey");
        res.json( {token, ...user._doc });

    }catch (e) {
        res.status(500).json({error: e.message});
    }
});

module.exports = authRouter;