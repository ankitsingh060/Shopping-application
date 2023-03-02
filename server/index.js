const { application } = require("express");
const express = require("express");
const authRouter = require("./router/auth");
const mongoose = require("mongoose");
const adminRouter = require("./router/admin");

const PORT = 3000;
const app = express();

const DB = "mongodb+srv://ankitsingh060:ankit1212@cluster0.ia48a6b.mongodb.net/?retryWrites=true&w=majority"


/*
Creating an application
http:<youripaddress>/

create a get request giving a json response with key of name
and value of your passing name 

{
    'name' : 'ankit'
}
*/

// provided GET, PUT,POST, UPDATE - > THIS IS CRUD OPERATION

//middleware
app.use(express.json());
app.use(authRouter);
app.use(adminRouter);

//connections
mongoose
  .connect(DB)
  .then(() => {
    console.log("MongoDB Connection successful");
  })
  .catch((e) => {
    console.log(e);
  });

app.listen(PORT, "0.0.0.0", () => {
  console.log("connected at port " + PORT);
});
