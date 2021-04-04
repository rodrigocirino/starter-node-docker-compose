/*
  Mock
  Return hard coded example
*/
module.exports = {
  createUser(user) {
    console.log("Running __MOCK__ function");
    return { name: "Rodrigo", age: 30 }; //fake stub return
  },
};
