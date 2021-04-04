const User = require("./User");

function createUser(name, age) {
  console.log("Running REAL function");
  let user = new User(name, age);
  return user;
}

module.exports.createUser = createUser;
