const version = "/v1";

module.exports = [
  // user detail
  {
    path: `${version}/user/profile`,
    controllers: require("../controllers/Users").getProfile,
    method: "get",
  },
  {
    path: `${version}/user/send-invitation`,
    controllers: require("../controllers/Users").sendInvitation,
    validator: require("../controllers/Users/validator").sendInvitation,
    method: "post",
  },
];
