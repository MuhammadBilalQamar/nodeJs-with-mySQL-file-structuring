const bodyParser = require("body-parser");

const jsonParser = bodyParser.json({ type: "application/*+json" });
const urlEncodedParser = bodyParser.urlencoded({
  extended: true,
  limit: 52428800,
  parameterLimit: 5000
});

module.exports = {
  jsonParser,
  urlEncodedParser
};
