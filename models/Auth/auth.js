const router = require("../../config/expressconfig");
const conn = require("../../config/dbConfig");
// var upload = require("../../config/multer");
var multer = require("multer");

var storage = multer.diskStorage({
  destination: function(req, file, cb) {
    cb(null, "/uploads/");
  },
  filename: function(req, file, cb) {
    cb(null, file.fieldname + "-" + Date.now());
  }
});

const upload = multer({
  storage: storage
});

upload.single("myImg");

const loginApi = router.get("/user-login", (req, res) => {
  return res.send("YOU LOGGED IN");
});

const registerApi = router.post("/user-register", (req, res) => {
  // return res.send("YOU LOGGED IN");
  upload(req, res, err => {
    console.log(err);
    console.log(req.file, "MY FILEEEEEEEEEEEEEEEEEEEEEEEEEEssssdd");
  }).single("myImg");
  console.log(req.file, "MY FILEEEEEEEEEEEEEEEEEEEEEEEEEE");
  conn.connect(function(err) {
    if (err) {
      console.error("error connecting: " + err.stack);
      return;
    }

    conn.query(
      `CALL insertUser('${req.body.userName}','${req.body.userEmail}')`
    );

    console.log("connected as id " + conn.threadId);
  });
});

module.exports = {
  loginApi,
  registerApi
};
