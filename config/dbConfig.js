const mysql = require("mysql");
const connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "travelous"
});

module.exports = connection;

// DELIMITER $$
// CREATE PROCEDURE insertUser(IN userName NVARCHAR(50), IN userEmail NVARCHAR(100))
// BEGIN
// INSERT INTO users (userName,userEmail) VALUES(userName,userEmail);
// END$$
