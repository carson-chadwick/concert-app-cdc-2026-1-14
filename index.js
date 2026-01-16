let express = require("express");
let app = new express();                                                                     
app.set("view engine","ejs")

// set up database connection
const knex = require("knex")({
 client: "mysql",
 connection: {
  host:"terraform-20260116022926931600000005.cyxaauakk2ws.us-east-1.rds.amazonaws.com",
  user: "admin",
  password: "YourSecurePassword2!",
  database:"paradise_donuts",
  port: 3306,
 },
});

app.get("/",(req,res) => {
 knex
 .select()
 .from("donutTable")
 .then((result) => {
  res.render("index", {aConcerts: result});
 }); 
});
app.listen(3000);

