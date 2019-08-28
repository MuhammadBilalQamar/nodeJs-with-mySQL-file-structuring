const router = require("../../config/expressconfig");
const conn = require("../../config/dbConfig");
const allCarsApi = router.get("/allcars", (req, res) => {
  return res.send("all cars are there");
});

const insertCarApi = router.post("/insertcar", (req, res) => {
  conn.connect(function(err) {
    if (err) {
      console.error("error connecting: " + err.stack);
      return;
    }
    conn.createQuery("");

    console.log("connected as id " + connection.threadId);
  });

  conn.end();

  return res.send("cars are inserted");
});

module.exports = {
  allCarsApi,
  insertCarApi
};
