console.log("bismillah-hir-rahman-ir-rahim");
const express = require("express");
const app = express();
const { jsonParser, urlEncodedParser } = require("./config/bodyParser");
const fileUploader = require("./config/multer");
const { loginApi, registerApi } = require("./models/Auth/auth");
const { allCarsApi, insertCarApi } = require("./models/Car/cars");
const { allHotelApi, insertHotelApi } = require("./models/Hotel/hotels");
const { allToursApi, insertTourApi } = require("./models/Tour/tour");

app.use("/uploads", express.static("uploads"));
app.use(jsonParser, urlEncodedParser);
app.use("/auth/login", loginApi);
app.use("/auth/register", registerApi);
app.use("/cars", allCarsApi);
app.use("/hotels", allHotelApi);
app.use("/tours", allToursApi);

var port = 5000;
var server = app.listen(port, () => {
  console.log(`started listening on port  ${port}`);
});
