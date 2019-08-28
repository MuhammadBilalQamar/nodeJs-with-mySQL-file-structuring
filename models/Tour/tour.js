const router = require("../../config/expressconfig");
const allToursApi = router.get("/alltours", (req, res) => {
  return res.send("all tours are there");
});

const insertTourApi = router.post("/inserttour", (req, res) => {
  return res.send("tours are inserted");
});

module.exports = {
  allToursApi,
  insertTourApi
};
