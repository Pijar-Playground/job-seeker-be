const version = "/v1";

module.exports = [
  // auth
  {
    path: `${version}/auth/login`,
    controllers: require("../controllers/Auth").login,
    validator: require("../controllers/Auth/validator").login,
    method: "post",
  },
  {
    path: `${version}/auth/register/recruiter`,
    controllers: require("../controllers/Auth").registerRecruiter,
    validator: require("../controllers/Auth/validator").registerRecruiter,
    method: "post",
  },
  {
    path: `${version}/auth/register`,
    controllers: require("../controllers/Auth").register,
    validator: require("../controllers/Auth/validator").register,
    method: "post",
  },

  // users
  {
    path: `${version}/user/detail/:id`,
    controllers: require("../controllers/Users").getProfileById,
    method: "get",
  },
  {
    path: `${version}/user/list`,
    controllers: require("../controllers/Users").getProfileList,
    method: "get",
  },
];
