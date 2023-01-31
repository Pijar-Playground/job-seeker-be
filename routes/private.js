const version = "/v1";

module.exports = [
  // user detail
  {
    path: `${version}/user/profile`,
    controllers: require("../controllers/Users").getProfile,
    method: "get",
  },
];
