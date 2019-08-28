const router = require("../../config/expressconfig");
const allHotelApi = router.get("/allhotels", (req, res) => {
  return res.send("all hotels are there");
});

const insertHotelApi = router.post("/inserthotel", (req, res) => {
  return res.send("hotels are inserted");
});

module.exports = {
  allHotelApi,
  insertHotelApi
};
