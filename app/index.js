const express = require("express");
const cors = require("cors");
const path = require("path");
const dotenv = require("dotenv");

dotenv.config({
  path: process.env.NODE_ENV === "development" ? ".env.development" : ".env",
  debug: true,
});

const { json, urlencoded } = express;

const app = express();

app.use(json());
app.use(urlencoded({ extended: false }));

const corsOptions = {
  origin: "*",
  optionsSuccessStatus: 200,
};
app.use(cors(corsOptions));

//const router = require("./routes");
//app.use(router);

app.use("/", (req, res) => {
  //res.json("Server is up and running");
  console.log("Default page is showing.");
  res.sendFile(path.join(__dirname + "/index.html"));
});

const port = process.env.PORT || 3000;
const host = process.env.HOST || "0.0.0.0";
app.listen(port, host, () => {
  console.log(`Server running http://${host}:${port}`);
});
